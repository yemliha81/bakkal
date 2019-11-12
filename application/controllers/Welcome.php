<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Welcome extends CI_Controller {

	public function main_board()
	{
		$this->load->view('main_view');
	}

	public function index()
	{
		
		$day = $this->db->select('*')
			->where('day_end_time', '0')
			->get('days_table')->row_array();
		
		if(!empty($day)){
		
			$data['pro_list'] = $this->db->select("*")
				//->limit(10)
				->get('products_table')->result_array();
			//debug($data['pro_list']);
			$this->load->view('welcome_view', $data);
	
		}else{
			$this->session->set_flashdata(array('day' => 'Lütfen Gün Başı Yapınız!', 'type' => 'danger'));
				redirect($_SERVER['HTTP_REFERER']);
		}
	}
	
	public function searchPro(){
		$post = $this->input->post();
		
		$pro = $this->db->select('pro_id, pro_name, pro_barcode, pro_price')
			->where('pro_barcode', $post['barcode'])
			->get('products_table')->row_array();
		
		if(empty($pro)){
			
			$pro2 = $this->db->select('*')
				->where('barcode', $post['barcode'])
				->get('barcodes_table')->row_array();
			
			if(!empty($pro2)){
				
				$ins['pro_name'] = $pro2['pro_name'];
				$ins['pro_barcode'] = $pro2['barcode'];
				$ins['pro_price'] = '0.00';
				$ins['pro_insert_time'] = time();
					$this->db->insert('products_table', $ins);
				
				if($this->db->affected_rows() > 0){
					$proInfo = json_encode($ins);
					echo $proInfo;
				}
				
			}else{
				
				echo 'newProduct'; die();
				
			}
			
			
		}else{
			
			$proInfo = json_encode($pro);
			echo $proInfo;
			
		}
		
	}
	
	public function add_pro_post(){
		$post = $this->input->post();
		
		$ins['pro_name'] = $post['pro_name'];
		$ins['pro_barcode'] = $post['pro_barcode'];
		$ins['pro_price'] = $post['pro_price'];
		$ins['pro_insert_time'] = time();
			$this->db->insert('products_table', $ins);
		
		$r['pro_name'] = $ins['pro_name'];
		$r['pro_price'] = $ins['pro_price'];
		$r['qty'] = 1;
		$r['pro_id'] = $this->db->insert_id();;
		
		if($this->db->affected_rows() > 0){
			$proInfo = json_encode($r);
			echo $proInfo;
		}else{
			echo 'error'; die();
		}
		
	}
	
	public function order_save_post(){
		$post = $this->input->post();
		$total = 0.00;
		//debug($post);
		
		if(!empty($post)){
			
			$ins['order_insert_time'] = time();
			$this->db->insert('orders_table', $ins);
			
			$order_id = $this->db->insert_id();
			
			foreach($post['pro_id'] as $key => $val){
				$ins2[$key]['order_id'] = $order_id;
				$ins2[$key]['pro_id'] = $val;
				$ins2[$key]['qty'] = $post['qty'][$key];
				$ins2[$key]['price'] = $post['proPrice'][$key];
					$this->db->insert('order_details_table',$ins2[$key]);
				
				$total += ($post['qty'][$key]*$post['proPrice'][$key]);
				
			}
			
			$this->db->update('orders_table', array('total_price' => $total), array('order_id' => $order_id));
			
			if($this->db->affected_rows() > 0){
				$this->print_order($order_id);
				echo 'success'; die();
			}else{
				echo 'error';
			}
			
		}
		
		
	}
	
	public function replaceStr($s) {
		$tr = array('ş','Ş','ı','İ','ğ','Ğ','ü','Ü','ö','Ö','Ç','ç','%','₺');
		$eng = array('s','S','i','I','g','G','u','U','o','O','C','c','', '');
		$s = str_replace($tr,$eng,$s);
	 
		return $s;
	}
	
	public function print_order($order_id){
		$this->load->helper('printer_helper'); 
		
		$order = $this->db->select('*')
			->where('order_id', $order_id)
			->join('products_table', 'order_details_table.pro_id = products_table.pro_id', 'left')
			->get('order_details_table')->result_array();
		
		//debug($order);
		
		$printer_name = $this->db->select('*')->where('id', '1')->get('printers_table')->row_array()['printer_name'];
		
			print_rows($order,$order_id, $printer_name);
		
	}
	
}

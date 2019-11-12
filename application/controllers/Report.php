<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {

	public function index(){
		
		$data['day_list'] = $this->db->select('*')
			->order_by('day_id', 'DESC')
			->get('days_table')->result_array();
		
		$this->load->view("report_view", $data);
		
	}
	 
	public function day_report($day_id){
		
		$day = $this->db->select('*')
			->where('day_id', $day_id)
			->get('days_table')->row_array();
		
		$data['orders'] = $this->db->select('*')
			->where('order_insert_time >=', $day['day_start_time'] )
			->where('order_insert_time <', $day['day_end_time'] )
			->order_by('order_id', 'DESC')
			->get('orders_table')->result_array();
		
		//debug($data);

		$this->load->view("day_details_view", $data);
		
	}

	public function order_details($order_id){
		
		$data['orders'] = $this->db->select('*')
			->where('order_id', $order_id)
			->join('products_table', 'order_details_table.pro_id = products_table.pro_id', 'left')
			->get('order_details_table')->result_array();
		
		$data['order'] = $this->db->select('*')
			->where('order_id', $order_id)
			->get('orders_table')->row_array();

		//debug($data);

		$this->load->view("order_details_view", $data);
		
	}

}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Day extends CI_Controller {

	public function day_start(){
		$check = $this->db->select('*')
			->where('day_end_time', '0')
			->get('days_table')->row_array();
		
		if(empty($check)){
			$ins['day_start_time'] = time();
				$this->db->insert('days_table', $ins);
			
			if($this->db->affected_rows() > 0){
				//echo 'success';
				$this->session->set_flashdata(array('day' => 'Gün Başı Yapılmıştır!', 'type' => 'success'));
				redirect($_SERVER['HTTP_REFERER']);
			}
		}else{
			$this->session->set_flashdata(array('day' => 'Daha Önce Gün Başı Yapılmıştır!', 'type' => 'danger'));
				redirect($_SERVER['HTTP_REFERER']);
		}
		
	}
	
	public function day_end(){
		$check = $this->db->select('*')
			->where('day_end_time', '0')
			->get('days_table')->row_array();
		//debug($check);
		if(!empty($check)){
			$upd['day_end_time'] = time();
				$this->db->update('days_table', $upd, array('day_id' => $check['day_id']));
			
			if($this->db->affected_rows() > 0){
				$this->session->set_flashdata(array('day' => 'Gün Sonu Yapılmıştır...', 'type' => 'success'));
				redirect($_SERVER['HTTP_REFERER']);
			}
		}else{
			$this->session->set_flashdata(array('day' => 'Daha Önce Gün Sonu Yapılmıştır!', 'type' => 'danger'));
				redirect($_SERVER['HTTP_REFERER']);
		}
	}

}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Cats extends CI_Controller {

	public function index(){
		
		$cats = $this->db->select('*')
			->where('up_cat_id', '0')
			->get('cats_table')->result_array();
		
		foreach( $cats as $key => $val ){
			$cats[$key]['sub_cats'] = $this->find_sub_cats($val['cat_id']);
		}
		
		debug($cats);
		
	}
	
	public function find_sub_cats($up_cat_id){ // Recursive function
		
		$sub_cats = $this->db->select('*')
			->where('up_cat_id', $up_cat_id)
			->get('cats_table')->result_array();
		
		if(!empty($sub_cats)){
			
			foreach( $sub_cats as $key => $val ){
				$sub_cats[$key]['sub_cats'] = $this->find_sub_cats($val['cat_id']);
			}
			
		}
		
		return $sub_cats;
		
	}
	
	
	public function getCatData($cat_id){
		
		$cat = $this->db->select('*')
			->where('cat_id', $cat_id)
			->get('cats_table')->row_array();
		
		return $cat;
		
	}
	
	
	
	public function test(){
		
		echo 'abcd <br/>';
		
		print_r( $this->getCatData(1)).'<br/>';
		
		echo 'abcd <br/>';
		print_r( $this->getCatData(2)).'<br/>';
		echo 'abcd <br/>';
		print_r( $this->getCatData(3)).'<br/>';
		echo 'abcd <br/>';
		print_r( $this->getCatData(4)).'<br/>';
		echo 'abcd <br/>';
		print_r( $this->getCatData(5)).'<br/>';
	}
	
	
}

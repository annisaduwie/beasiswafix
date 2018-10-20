<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class verifemail extends CI_Model { 

	
     public function changeActiveState($key)  
  {  
   $data = array('status' => 'aktif');  
     $this->db->where('md5(id_pencari)', $key);  
      return $this->db->update('pencari', $data);  
   } 


  }
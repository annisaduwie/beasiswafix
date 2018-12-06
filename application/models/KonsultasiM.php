<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class KonsultasiM extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}

	public function hapus_konsultasi($id_konsultasi){
   $query = $this->db->delete('konsultasi',"id_konsultasi = '$id_konsultasi'");
   return $query;
  }

 
}
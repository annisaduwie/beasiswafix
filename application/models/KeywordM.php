<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class KeywordM extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}
	public function get_keyword(){
   $query = $this->db->query("SELECT * from keyword ");
   return $query;
  }

    public function get_key($id_keyword){
   $query = $this->db->query("SELECT * from keyword where id_keyword='$id_keyword'");
   return $query;
  }

  public function get_keyword_login($id_pencari){
   $query = $this->db->query("SELECT * from keyword where id_pencari = $id_pencari");
   return $query;
  }

 	public function insertKeyword($dataKeyword){
    // $data=array(
    //   "keyword_prodi"=>$this->keyword_prodi,
    //   "keyword_kategori"=>$this->keyword_kategori,
    //   "keyword_tingkatan"=>$this->keyword_tingkatan,
    // );
    // $this->db->insert('keyword',$data);
    // return $this->db->affected_rows();
      // $this->db->trans_start();
        
      return $this->db->insert('pencarian', $dataKeyword);
     
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
  	}


}
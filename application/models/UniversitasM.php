<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class UniversitasM extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}

	public function get_universitas(){
   $query = $this->db->query("SELECT * from universitas, detail_universitas WHERE universitas.id_universitas=detail_universitas.id_universitas");
   return $query;
  } 
  public function get_universitas_by_id($id_universitas){
   $query = $this->db->query("SELECT * from universitas, detail_universitas WHERE universitas.id_universitas=detail_universitas.id_universitas AND universitas.id_universitas='$id_universitas'");
   return $query;
  } 
  public function get_negara(){
   $query = $this->db->query("SELECT distinct negara from universitas ");
   return $query;
  } 

  public function get_universitas_id($id_universitas){
   $query = $this->db->query("SELECT id_universitas from universitas where id_universitas='$id_universitas'");
   return $query;
  } 
      public function get_full_univ($id_universitas){
   $query = $this->db->query("SELECT * from universitas, detail_universitas where universitas.id_universitas=detail_universitas.id_universitas AND universitas.id_universitas='$id_universitas'");
   return $query;
  }

  public function insert($dataUniv){
      $this->db->trans_start();
        
      $this->db->insert('universitas', $dataUniv);
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
  	}
  public function editUniversitas($dataUniv, $id_universitas){
    $this->db->where("id_universitas",$id_universitas);
    $this->db->update("universitas",$dataUniv);
    return true;
  }
    public function editDetailUniversitas($dataUniv, $id_detail_univ){
    $this->db->where("id_detail_universitas",$id_detail_univ);
    $this->db->update("detail_universitas",$dataUniv);
    return true;
  }

  public function get_id_by_name($nama_univ){
     $query = $this->db->query("SELECT id_universitas from universitas where nama_universitas='$nama_univ'");
     return $query;
  }

  public function get_name_by_id($id_univ){
     $query = $this->db->query("SELECT nama_universitas from universitas where id_universitas='$id_univ'");
     return $query;
  }
    public function get_name_by_negara($negara){
     $query = $this->db->query("SELECT negara from universitas where negara='$negara'");
     return $query;
  }
  public function delete_univ($id_univ){
      $query = $this->db->query("DELETE universitas, fakultas, prodi from universitas join fak_univ on fak_univ.id_universitas=universitas.id_universitas join fakultas on fakultas.id_fakultas=fak_univ.id_fakultas join prodi_fak on prodi_fak.id_fakultas = fakultas.id_fakultas join prodi on prodi.id_prodi=prodi_fak.id_prodi WHERE universitas.id_universitas='$id_univ'");
      return $query;
  }

  public function insert_detail_univ(){

      $this->db->trans_start();
        
      $this->db->insert('detail_universitas', $dataUniv);
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;

  }

  public function tampil_detail_univ($nama_univ){
    $query = $this->db->query("SELECT * from universitas, detail_universitas, fak_univ, fakultas, prodi_fak, prodi WHERE universitas.id_universitas=detail_universitas.id_universitas AND universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_universitas='$nama_univ' GROUP BY nama_universitas");
    return $query;
  }

     
}
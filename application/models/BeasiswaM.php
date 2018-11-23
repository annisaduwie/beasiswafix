<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class BeasiswaM extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}

	public function get_beasiswa($id_universitas){
   $query = $this->db->query("SELECT * from universitas, beasiswa_universitas, beasiswa where universitas.id_universitas=beasiswa_universitas.id_universitas AND beasiswa_universitas.id_beasiswa_univ=beasiswa.id_beasiswa_univ AND universitas.id_universitas='$id_universitas'");
   return $query;
  } 
    public function get_beasiswa_by_id($id_beasiswa){
   $query = $this->db->query("SELECT * from universitas, beasiswa_universitas, beasiswa where universitas.id_universitas=beasiswa_universitas.id_universitas AND beasiswa_universitas.id_beasiswa_univ=beasiswa.id_beasiswa_univ AND id_beasiswa='$id_beasiswa'");
   return $query;
  } 
  public function get_name_by_id($id_universitas){
   $query = $this->db->query("SELECT id_universitas, nama_universitas from universitas, beasiswa_universitas, beasiswa where universitas.id_universitas=beasiswa_universitas.id_universitas AND beasiswa_universitas.id_beasiswa_univ=beasiswa.id_beasiswa_univ AND universitas.id_universitas='$id_universitas'");
   return $query;
  } 

  public function get_univ_by_id($id_universitas){
     $query = $this->db->query("SELECT universitas.id_universitas from universitas, beasiswa_universitas, beasiswa where universitas.id_universitas=beasiswa_universitas.id_universitas AND beasiswa_universitas.id_beasiswa_univ=beasiswa.id_beasiswa_univ AND universitas.id_universitas='$id_universitas'");
     return $query;

  }



  public function tambah_beasiswa($data){
  	$this->db->trans_start(); 
      $this->db->insert('beasiswa', $data);
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
  }
    public function edit_beasiswa($data, $id_beasiswa){
    $this->db->where('id_beasiswa',$id_beasiswa);
    $this->db->update('beasiswa', $data);
    return true;
  }
  public function edit_detailBeasiswa($dataDetail, $id_detail_beasiswa){
    $this->db->where("id_beasiswa_univ",$id_detail_beasiswa);
    $this->db->update("beasiswa_universitas", $dataDetail);
    return true;
  }
  public function hapus_beasiswa($id){
     $query = $this->db->delete('beasiswa_universitas',"id_beasiswa_univ = '$id'");
    return $query;
  }
  public function beasiswa_univ(){
      $query = $this->db->query("SELECT distinct universitas.id_universitas, nama_universitas from universitas, beasiswa_universitas, beasiswa where universitas.id_universitas=beasiswa_universitas.id_universitas AND beasiswa_universitas.id_beasiswa_univ=beasiswa.id_beasiswa_univ");
    return $query;
  }
  public function pencarian_beasiswa($keyword_universitas, $keyword_tingkatan){
      $query = $this->db->query("SELECT * from universitas, beasiswa_universitas, beasiswa where universitas.id_universitas=beasiswa_universitas.id_universitas AND beasiswa_universitas.id_beasiswa_univ=beasiswa.id_beasiswa_univ AND nama_universitas='$keyword_universitas'");
    return $query;
  }
    public function pencarian_beasiswa_by_univ($keyword_universitas){
      $query = $this->db->query("SELECT * from universitas, beasiswa_universitas, beasiswa, detail_beasiswa, detail_kategori, kategori where universitas.id_universitas=beasiswa_universitas.id_universitas AND beasiswa_universitas.id_beasiswa_univ=beasiswa.id_beasiswa_univ AND beasiswa.id_beasiswa=detail_beasiswa.id_beasiswa AND detail_beasiswa.id_detail_beasiswa=detail_kategori.id_detail_beasiswa AND detail_kategori.id_kategori=kategori.id_kategori AND nama_universitas='$keyword_universitas' GROUP BY detail_beasiswa.id_detail_beasiswa");
    return $query;
  }

    public function get_url_universitas($id_universitas) {
    $result = $this->db->select('url, nama_universitas')
    ->from('beasiswa')
    ->join('beasiswa_universitas', 'beasiswa.id_beasiswa_univ = beasiswa_universitas.id_beasiswa_univ')
    ->join('universitas', 'universitas.id_universitas = beasiswa_universitas.id_universitas')
    ->where('universitas.id_universitas', $id_universitas)
    ->get()->row();

    return $result;
  }

}
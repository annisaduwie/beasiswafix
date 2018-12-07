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
  public function get_beasiswa_umum(){
   $query = $this->db->query("SELECT * from beasiswa_umum");
   return $query;
  } 
  public function get_list_negara(){
   $query = $this->db->query("SELECT negara from beasiswa_umum WHERE negara is not null");
   return $query;
  }
  public function tambah_beasiswa_umum($data){
    $this->db->trans_start(); 
      $this->db->insert('beasiswa_umum', $data);
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
  }
  public function edit_beasiswa_umum($id_beasiswa_umum, $data){
    $this->db->where('id_beasiswa_umum',$id_beasiswa_umum);
    $this->db->update('beasiswa_umum', $data);
    return true;
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
  public function hapus_beasiswa_umum($id){
     $query = $this->db->delete('beasiswa_umum',"id_beasiswa_umum = '$id'");
    return $query;
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

  public function get_url_beasiswa($id_universitas) {
    $result = $this->db->select('url, nama_universitas')
    ->from('beasiswa')
    ->join('beasiswa_universitas', 'beasiswa.id_beasiswa_univ = beasiswa_universitas.id_beasiswa_univ')
    ->join('universitas', 'universitas.id_universitas = beasiswa_universitas.id_universitas')
    ->where('universitas.id_universitas', $id_universitas)
    ->get()->row();

    return $result;
  }

  public function get_url_beasiswa_umum_all($jenjang, $kategori_beasiswa, $negara) {
    $query = $this->db->query("SELECT url_beasiswa_umum FROM beasiswa_umum WHERE jenjang ='$jenjang' AND kategori_beasiswa_umum = '$kategori_beasiswa' AND negara = '$negara'");
    return $query;
  }
  public function get_url_beasiswa_umum_key_kategori_beasiswa($kategori_beasiswa) {
    $query = $this->db->query("SELECT url_beasiswa_umum FROM beasiswa_umum WHERE kategori_beasiswa_umum ='$kategori_beasiswa'");
    return $query;
  }
  public function get_url_beasiswa_umum_key_negara($negara) {
    // $query = $this->db->query("SELECT url_beasiswa_umum FROM beasiswa_umum WHERE negara ='$negara'");
    // return $query;
    return $this->db
    ->where('negara', $negara)
    ->get('beasiswa_umum')
    ->row()
    ->url_beasiswa_umum;
  }

  public function get_url_beasiswa_umum_key_jenjang($jenjang) {
    // $query = $this->db->query("SELECT url_beasiswa_umum FROM beasiswa_umum WHERE negara ='$negara'");
    // return $query;
    return $this->db
    ->where('jenjang', $jenjang)
    ->get('beasiswa_umum')
    ->row()
    ->url_beasiswa_umum;
  }
  public function get_url_beasiswa_umum_key_jenjang_kategori_beasiswa($jenjang, $kategori_beasiswa) {
    $query = $this->db->query("SELECT url_beasiswa_umum FROM beasiswa_umum WHERE jenjang ='$jenjang' AND kategori_beasiswa_umum='$kategori_beasiswa'");
    return $query;
  }
  public function get_url_beasiswa_umum_key_jenjang_negara($jenjang, $negara) {
    $query = $this->db->query("SELECT url_beasiswa_umum FROM beasiswa_umum WHERE jenjang ='$jenjang' AND negara='$negara'");
    return $query;
  }
  public function get_url_beasiswa_umum_key_kategori_beasiswa_negara($kategori_beasiswa, $negara) {
    $query = $this->db->query("SELECT url_beasiswa_umum FROM beasiswa_umum WHERE kategori_beasiswa_umum='$kategori_beasiswa' AND negara='$negara'");
    return $query;
  }


}
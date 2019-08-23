<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class PencariM extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}

	public function get_pencari(){
   $query = $this->db->query("SELECT * from pencari where isDelete=0");
   return $query;
 }

 public function get_email($username){
   $query = $this->db->query("SELECT email from pencari where username='$username'");
   return $query;
 }
 public function get_konsultasi(){
   $query = $this->db->query("SELECT * from pencari, konsultasi where pencari.id_pencari=konsultasi.id_pencari GROUP BY id_konsultasi ORDER BY konsultasi.create_dtm DESC");
   return $query;
 }
  public function get_pencarian_konsultasi($status){
   $query = $this->db->query("SELECT * from pencari, konsultasi where pencari.id_pencari=konsultasi.id_pencari AND konsultasi.status='$status'GROUP BY id_konsultasi ORDER BY konsultasi.create_dtm DESC");
   return $query;
 }
  public function get_detail_konsultasi($id_konsultasi){
   $query = $this->db->query("SELECT * from pencari, konsultasi where pencari.id_pencari=konsultasi.id_pencari AND id_konsultasi='$id_konsultasi'");
   return $query;
 }



 public function cekEmailPencari($username){
  $this->db->select('email');
  $this->db->where('email', $username);

    // $this->db->where('peran', 'analis');
  return $this->db->get('pencari');
}


public function cekId($id_pencari){
  $this->db->select('id_pencari');
  $this->db->where('id_pencari', $id_pencari);

    // $this->db->where('peran', 'analis');
  return $this->db->get('pencari');
}

function  cekEmail($table_name,  $email){ 
 $this->db->where('email', $email); 
 $query = $this->db->get($table_name);
 if ($query->num_rows() > 0)  { 
   return TRUE; 
 }  else  { 
   return FALSE;  
 }  
}


public function getId($email){
  $this->db->select('id_pencari');
  $this->db->where('email',$email);

  return $this->db->get('pencari');
}

public function insert($dataAkun){
  $this->db->trans_start();

  $this->db->insert('pencari', $dataAkun);
  $insert_id = $this->db->insert_id();

  $this->db->trans_complete();
  return $insert_id;
}
public function insert_konsultasi($dataKonsultasi){
  $this->db->trans_start();

  $this->db->insert('konsultasi', $dataKonsultasi);
  $insert_id = $this->db->insert_id();

  $this->db->trans_complete();
  return $insert_id;
}
public function editPencari($dataPencari, $id_pencari){
  $this->db->where('id_pencari',$id_pencari);
  $this->db->update('pencari',$dataPencari);
  return true;
}

public function cekStatus($username){
  $q = $this->db->query("SELECT status from pencari where username ='$username'");
  return $q;
}

public function get_nama_pencari($id_pencari){
 $query = $this->db->query("SELECT * from pencari WHERE id_pencari = '$id_pencari'");
 return $query;
} 

public function getIdPencari($nama_pencari){
  $this->db->select('id_pencari');
  $this->db->where('nama', $nama_pencari);

    // $this->db->where('peran', 'analis');
  return $this->db->get('pencari');
}

  public function update_ulasan($id_ulasan, $data){
    $this->db->where('id_ulasan',$id_ulasan);
    $this->db->update('ulasan', $data);
    return true;
  }

public function lupapassword($data,$email_def){

  if($email_def == md5("ebeasiswa.indonesia@gmail.com")){
        // $cekUserAdmin = $this->db->query("SELECT * FROM admin WHERE email='$email'")->num_rows();

        // if($cekUserAdmin > 0){
    $this->db->where('md5(email)',$email_def);
    $this->db->update('admin',$data);

    return true;

  }else{
    $cekUser = $this->db->query("SELECT * FROM pencari WHERE md5(email)='$email_def'")->num_rows();

    if($cekUser > 0){
      $this->db->where('md5(email)',$email_def);
      $this->db->update('pencari',$data);

      return true;
    }else{
      $this->session->set_flashdata('error',"Email tidak tersedia.");
      redirect('Pencari/forgot_password_confirm/'.$email_def);
    }
  }
}

public function insertUlasan($dataUlasan){

  $this->db->trans_start();

  $this->db->insert('ulasan', $dataUlasan);
  $insert_id = $this->db->insert_id();

  $this->db->trans_complete();
  return $insert_id;

}

public function get_ulasan($id_universitas){
  $query = $this->db->query("SELECT * from pencari, ulasan, universitas where pencari.id_pencari=ulasan.id_pencari AND ulasan.id_universitas = universitas.id_universitas  AND  universitas.id_universitas ='$id_universitas' AND status_publikasi='Sudah Disetujui'");
  return $query;
}
public function get_full_ulasan(){
  $query = $this->db->query("SELECT * from pencari, ulasan, universitas where pencari.id_pencari=ulasan.id_pencari AND ulasan.id_universitas = universitas.id_universitas AND status_publikasi='Belum disetujui';");
  return $query;
}
public function get_full_ulasan_disetujui(){
  $query = $this->db->query("SELECT * from pencari, ulasan, universitas where pencari.id_pencari=ulasan.id_pencari AND ulasan.id_universitas = universitas.id_universitas And status_publikasi='Sudah disetujui';");
  return $query;
}public function get_full_ulasan_dibatalkan(){
  $query = $this->db->query("SELECT * from pencari, ulasan, universitas where pencari.id_pencari=ulasan.id_pencari AND ulasan.id_universitas = universitas.id_universitas And status_publikasi='Tidak disetujui';");
  return $query;
}
public function get_ulasan_by_pencari($id_pencari){
  $query = $this->db->query("SELECT * from pencari, ulasan, universitas where pencari.id_pencari=ulasan.id_pencari AND ulasan.id_universitas = universitas.id_universitas  AND  pencari.id_pencari ='$id_pencari' ORDER BY ulasan.post_ulasan DESC");
  return $query;
}
public function get_ulasan_by_pencari_ulasan($id_pencari, $id_ulasan){
  $query = $this->db->query("SELECT * from pencari, ulasan, universitas where pencari.id_pencari=ulasan.id_pencari AND ulasan.id_universitas = universitas.id_universitas  AND  pencari.id_pencari ='$id_pencari' AND ulasan.id_ulasan='$id_ulasan'");
  return $query;
}
public function update_ulasan_pencari($id_ulasan, $dataUlasan){

  $this->db->where('id_ulasan',$id_ulasan);
  $this->db->update('ulasan',$dataUlasan);
  return true;
}
public function hapus_ulasan_pencari($id_ulasan){

   $query = $this->db->delete('ulasan',"id_ulasan= '$id_ulasan'");
    return $query;

}




}
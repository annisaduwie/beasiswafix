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

  public function cekEmailPencari($email){
    $this->db->select('email');
    $this->db->where('email', $email);

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
    public function editPencari($dataPencari, $id_pencari){
    $this->db->where('id_pencari',$id_pencari);
    $this->db->update('pencari',$dataPencari);
    return true;
  }

  	public function cekStatus($username){
  		$q = $this->db->query("SELECT status from pencari where username ='$username'");
        return $q;
}

  public function get_nama_pencari($username){
   $query = $this->db->query("SELECT * from pencari WHERE username = '$username'");
   return $query;
  } 

    public function getIdPencari($nama_pencari){
    $this->db->select('id_pencari');
    $this->db->where('nama', $nama_pencari);

    // $this->db->where('peran', 'analis');
    return $this->db->get('pencari');
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

    

}
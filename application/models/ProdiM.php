  <?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
  class ProdiM extends CI_Model{
  	function __construct(){
  		parent:: __construct();
  		$this->load->database();
  	}
  	public function get_prodi($id_fakultas){
     $query = $this->db->query("SELECT * from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND fakultas.id_fakultas='$id_fakultas'");
     return $query;
   }

   public function get_univ_prodi($id_fakultas){
     $query = $this->db->query("SELECT * from universitas, fak_univ, fakultas, prodi_fak, prodi WHERE universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND fakultas.id_fakultas=$id_fakultas;");
     return $query;
   }
      public function get_univ_prodi_kosong($id_fakultas){
     $query = $this->db->query("SELECT * from universitas, fak_univ, fakultas WHERE universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=$id_fakultas;");
     return $query;
   }



   public function tampil_prodi(){
     $query = $this->db->query("SELECT nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi GROUP BY fakultas.nama_fakultas;");
     return $query;
   }
   public function jumlah_prodi(){
     $query = $this->db->query("SELECT distinct nama_fakultas, count('nama_prodi') as jumlah_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi GROUP BY fakultas.nama_fakultas;");
     return $query;
   }

   public function nama_prodi(){
     $query = $this->db->query("SELECT distinct nama_fakultas,nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi order by fak_prodi.id_fakultas;");
     return $query;
   }


   public function get_prodi_dropdown(){
     $query = $this->db->query("SELECT * from prodi GROUP BY prodi.nama_prodi");
     return $query;
   }
   public function get_prodi_dropdown_pelajar(){
     $query = $this->db->query("SELECT * from prodi where (prodi.tingkatan ='Sarjana' OR prodi.tingkatan='Diploma') GROUP BY prodi.nama_prodi");
     return $query;
   }

   public function get_prodi_dropdown_mahasiswa($kategori_univ){
     $query = $this->db->query("SELECT * from universitas, fak_univ, prodi_fak, prodi WHERE universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND (prodi.tingkatan ='Magister' OR prodi.tingkatan='Doktor') AND universitas.kategori_universitas='$kategori_univ' GROUP BY prodi.nama_prodi;");
     return $query;
   }

   function  cekNamaProdi($table_name,  $nama_prodi){ 
     $this->db->where('nama_prodi', $nama_prodi); 
     $query = $this->db->get($table_name);
     if ($query->num_rows() > 0)  { 
       return TRUE; 
     }  else  { 
       return FALSE;  
     }  
   }
   public function insertProdi($dataAkun){
    $this->db->trans_start();
    
    $this->db->insert('prodi', $dataAkun);
    $insert_id = $this->db->insert_id();
    
    $this->db->trans_complete();
    return $insert_id;
  }

  public function editProdi($dataProdi, $id_prodi){
    $this->db->where('id_prodi',$id_prodi);
    $this->db->update('prodi',$dataProdi);
    return true;
  }

  function delete_by_id($id){
    $query = $this->db->delete('prodi',"id_prodi = '$id'");
    return $query;
  }
}
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class FakultasM extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}

  public function cek_tingkatan($id_pencari){
    $query = $this->db->query("SELECT tingkatan from pencari where id_pencari='$id_pencari'")->row_array();
    return $query;
  }

	public function get_fakultas($id_universitas){
   $query = $this->db->query("SELECT * from universitas, fak_univ, fakultas where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas = fakultas.id_fakultas AND universitas.id_universitas='$id_universitas'");
   return $query;
  }

      public function get_full_fakultas($id_fakultas){
   $query = $this->db->query("SELECT * from fakultas where id_fakultas='$id_fakultas'");
   return $query;
  }

    public function tampil_fakultas($limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }
 public function tampil_fakultas_list_univ($id_universitas){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND universitas.id_universitas='$id_universitas' GROUP BY nama_fakultas");
   return $query;
  }
 public function tampil_fakultas_list_univ_page($limit, $start,$id_universitas){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND universitas.id_universitas='$id_universitas' GROUP BY nama_fakultas  LIMIT $start,$limit");
   return $query;
  }
   public function tampil_fakultas_mahasiswa($limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }

  public function tampil_fakultas_pelajar($limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }
 public function tampil_fakultas_pelajar_universitas($id_universitas, $limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND universitas.id_universitas='$id_universitas' AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }
   public function tampil_fakultas_pelajar_universitas_negara($id_universitas, $negara, $limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND universitas.id_universitas='$id_universitas' AND negara='$negara' AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }
  public function tampil_fakultas_pelajar_negara($negara, $limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND negara='$negara' AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }
  public function tampil_fakultas_mahasiswa_negara($negara, $limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND negara='$negara' AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }
   public function tampil_fakultas_mahasiswa_universitas($id_universitas, $limit, $start){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND universitas.id_universitas='$id_universitas' AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') GROUP BY nama_fakultas LIMIT $start,$limit");
   return $query;
  }
  public function tampil_fakultas_rows(){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi GROUP BY nama_fakultas");
   return $query;
  }
  public function tampil_fakultas_rows_pelajar(){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas");
   return $query;
  }
  public function tampil_fakultas_rows_mahasiswa(){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') GROUP BY nama_fakultas");
   return $query;
  }
  public function tampil_fakultas_rows_mahasiswa_universitas($id_universitas){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND universitas.id_universitas='$id_universitas' AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') GROUP BY nama_fakultas");
   return $query;
  }
  public function tampil_fakultas_rows_pelajar_universitas($id_universitas){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND universitas.id_universitas='$id_universitas' AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas");
   return $query;
  }
    public function tampil_fakultas_rows_pelajar_universitas_negara($id_universitas, $negara){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND universitas.id_universitas='$id_universitas' AND negara='$negara' AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas");
   return $query;
  }
  public function tampil_fakultas_rows_pelajar_negara($negara){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND negara='$negara' AND (prodi.tingkatan='Diploma' OR prodi.tingkatan='Sarjana') GROUP BY nama_fakultas");
   return $query;
  }
  public function tampil_fakultas_rows_mahasiswa_negara($negara){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND negara='$negara' AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') GROUP BY nama_fakultas");
   return $query;
  }

  public function tampil_nama_fakultas(){
   $query = $this->db->query("SELECT distinct nama_fakultas from fakultas");
   return $query;
  }


  public function tampil_fakultas_list_all($universitas, $negara){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_universitas='$universitas' AND negara='$negara' GROUP BY nama_fakultas");
   return $query;
  }

   public function tampil_fakultas_list_univ_rows($id_universitas){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND universitas.id_universitas='$id_universitas' GROUP BY nama_fakultas");
   return $query;
  }

    public function tampil_fakultas_list_negara($negara){
   $query = $this->db->query("SELECT distinct  nama_fakultas, fakultas.id_fakultas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND negara='$negara' GROUP BY nama_fakultas");
   return $query;
  }

  public function prodi_berdasar_fak($nama_fakultas){

  $query=$this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_fakultas='$nama_fakultas'");
}


   public function tampil_fakultas_limit(){
   $query = $this->db->query("SELECT distinct nama_fakultas from fakultas Order by id_fakultas Desc LIMIT 6");
   return $query;
  }
   public function tampil_fakultas_pelajar_limit(){
   $query = $this->db->query("SELECT distinct nama_fakultas from fakultas,prodi_fak,prodi WHERE fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND (prodi.tingkatan='Sarjana' OR prodi.tingkatan='Diploma') Order by fakultas.id_fakultas Desc LIMIT 6");
   return $query;
  }

  public function tampil_fakultas_mahasiswa_limit(){
   $query = $this->db->query("SELECT distinct nama_fakultas from fakultas,prodi_fak,prodi WHERE fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') Order by fakultas.id_fakultas Desc LIMIT 6");
   return $query;
  }

 	public function insertFakultas($dataAkun){
      $this->db->trans_start();
        
      $this->db->insert('fakultas', $dataAkun);
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
  	}

    public function get_id(){
      $query = $this->db->query("SELECT MAX(id_fakultas) from fakultas");
   return $query;
    }

  	public function editFakultas($dataFakultas, $id_fakultas){
    $this->db->where('id_fakultas',$id_fakultas);
    $this->db->update('fakultas',$dataFakultas);
    return true;
  }

  function delete_by_id($id_fakultas){
		$query = $this->db->delete('fakultas',"id_fakultas = '$id_fakultas'");
		return $query;
	}
}
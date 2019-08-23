<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class PencarianM extends CI_Model{
  function __construct(){
    parent:: __construct();
    $this->load->database();
  }
  public function get_pencarian(){
   $query = $this->db->query("SELECT * from pencarian");
   return $query;
  }

    public function get_pencarian_by_id($id_pencarian){
   $query = $this->db->query("SELECT * from pencarian where id_pencarian='$id_pencarian'");
   return $query;
  }


  public function insertPencarian($dataPencarian){
    // $data=array(
    //   "keyword_prodi"=>$this->keyword_prodi,
    //   "keyword_kategori"=>$this->keyword_kategori,
    //   "keyword_tingkatan"=>$this->keyword_tingkatan,
    // );
    // $this->db->insert('keyword',$data);
    // return $this->db->affected_rows();
      // $this->db->trans_start();
        
      return $this->db->insert('pencarian', $dataPencarian);
     
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
    }

    public function insertPencarianBeasiswa($dataPencarianBeasiswa){
        
      return $this->db->insert('pencarian_beasiswa', $dataPencarianBeasiswa);
     
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
    }
    public function insertKontenBeasiswa($dataKontenBeasiswa){

        
      return $this->db->insert('konten_beasiswa', $dataKontenBeasiswa);
     
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
    }
     public function detailPencarianBeasiswa($dataPencarianBeasiswa){

        
      return $this->db->insert('detail_pencarian_beasiswa', $dataPencarianBeasiswa);
     
      $insert_id = $this->db->insert_id();
      
      $this->db->trans_complete();
      return $insert_id;
    }

  public function pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan){

    $query = $this->db->query("SELECT nama_universitas, negara, gambar_universitas from universitas, fak_univ, fakultas, prodi_fak, prodi where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND prodi.nama_prodi='$keyword_prodi' AND universitas.kategori_universitas='$keyword_kategori' AND prodi.tingkatan='$keyword_tingkatan' GROUP BY universitas.id_universitas");
    
    return $query;
    

  }

   public function pencarianCount($keyword_prodi, $keyword_kategori, $keyword_tingkatan){

    $query = $this->db->query("SELECT count(*) from universitas, fak_univ, fakultas, prodi_fak, prodi where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id__prodi AND prodi.nama_prodi='$keyword_prodi' AND universitas.kategori_universitas='$keyword_kategori' AND prodi.tingkatan='$keyword_tingkatan' GROUP BY universitas.id_universitas");
    
    return $query;
    

  }

    public function pencarianPage($limit, $start, $keyword_prodi, $keyword_kategori, $keyword_tingkatan){

    $query = $this->db->query("SELECT * from universitas, fak_univ, fakultas, prodi_fak, prodi where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND prodi.nama_prodi='$keyword_prodi' AND universitas.kategori_universitas='$keyword_kategori' AND prodi.tingkatan='$keyword_tingkatan' GROUP BY universitas.id_universitas LIMIT $start,$limit");
    
    return $query;
    

  }
  // public function pencarian($list_universitas, $list_negara){

  //   $query = $this->db->query("SELECT * from universitas, univ_fak, fakultas, fak_prodi, prodi where universitas.id_universitas=univ_fak.id_universitas AND univ_fak.id_univ_fak=fakultas.id_univ_fak AND univ_fak.id_univ_fak=fak_prodi.id_univ_fak AND fak_prodi.id_prodi=prodi.id_prodi AND universitas.nama_universitas='$list_universitas' AND universitas.negara='$list_negara'");
    
  //   return $query;
    

  // }
public function filter_fakultas_by_universitas($universitas){

$query= $this->db->query("SELECT * from universitas, fak_univ, fakultas, prodi_fak, prodi WHERE universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_universitas = '$universitas' ");
return $query;
  

}

public function filter_fakultas_by_univ_negara($negara){

  $query= $this->db->query("SELECT * from universitas, fak_univ, fakultas, prodi_fak, prodi WHERE universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND negara = '$negara'");
return $query;

} 
  public function editPencarian($dataUniv, $id_pencarian){
    $this->db->where("id_pencarian",$id_pencarian);
    $this->db->update("pencarian",$dataUniv);
    return true;
  }

  //   public function insert($dataPencarian){
  //   $this->db->where("id_pencarian",$id_pencarian);
  //   $this->db->update("pencarian",$dataUniv);
  //   return true;
  // }




public function tampil_histori_pencarian($id_pencari){

  $query= $this->db->query("SELECT distinct * from pencari, pencarian WHERE pencari.id_pencari=pencarian.id_pencari AND pencarian.id_pencari='$id_pencari' AND pencarian.status='Belum Dihapus' GROUP BY pencarian.id_pencarian order by waktu_pencarian DESC;");

return $query;

} 

public function tampil_histori_pencarian_beasiswa($id_pencari){

  $query= $this->db->query("SELECT distinct * from pencari, pencarian_beasiswa WHERE pencari.id_pencari=pencarian_beasiswa.id_pencari AND pencarian_beasiswa.id_pencari='$id_pencari' AND pencarian_beasiswa.status='Belum Dihapus' GROUP BY pencarian_beasiswa.id_pencarian_beasiswa order by pencarian_beasiswa.create_dtm DESC;");

return $query;

} 

public function tampil_favorit($id_pencari){

  $query = $this->db->query("SELECT * from universitas, pencarian_favorit where universitas.id_universitas=pencarian_favorit.id_universitas AND id_pencari='$id_pencari'");
 return $query;

}

public function hapus_favorit($id_pencarian_favorit, $id_pencari){
  $query = $this->db->query("DELETE FROM pencarian_favorit WHERE id_pencarian_favorit = '$id_pencarian_favorit' AND id_pencari ='$id_pencari'");
    return $query;
}

public function pencarian_univ_berdasar_fakultas($nama_fakultas){
  $query = $this->db->query("SELECT * from universitas, fak_univ, fakultas, prodi_fak, prodi WHERE universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$nama_fakultas' GROUP BY nama_universitas");
  return $query;
}

public function pencarian_univ_berdasar_fakultas_pages($limit, $start, $nama_fakultas){
  $query = $this->db->query("SELECT * from universitas, fak_univ, fakultas, prodi_fak, prodi WHERE universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$nama_fakultas' GROUP BY nama_universitas LIMIT $start,$limit");
  return $query;
}

public function hapus_histori_pencarian($id_pencarian, $id_pencari){
    $query = $this->db->query("DELETE FROM pencarian WHERE id_pencarian='$id_pencarian' AND id_pencari='$id_pencari'");
    return $query;
}
public function hapus_histori_pencarian_beasiswa($id_pencarian_beasiswa, $id_pencari){
    $query = $this->db->query("DELETE FROM pencarian_beasiswa WHERE id_pencarian_beasiswa='$id_pencarian_beasiswa' AND id_pencari='$id_pencari'");
    return $query;
}

}
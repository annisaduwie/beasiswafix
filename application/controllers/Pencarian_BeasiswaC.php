<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class Pencarian_BeasiswaC extends CI_Controller		
{	
	public function __construct()	
	{	
		parent::__construct();	
		$this->load->model('ProdiM');
		$this->load->model('KeywordM');
		$this->load->model('PencariM');
		$this->load->model('UniversitasM');
		$this->load->model('PencarianM');
		$this->load->model('FakultasM');
		$this->load->model('BeasiswaM');
		$this->load->helper('url','form');
		$this->model = $this->PencariM;
		$this->model = $this->FakultasM;
		$this->model = $this->ProdiM;
		$this->model = $this->KeywordM;
		$this->model = $this->UniversitasM;
		$this->model = $this->PencarianM;
		$this->model = $this->BeasiswaM;
	 	 // $peran=$this->session->userdata('peran');\
        // if($peran!="admin"){
        //  redirect('LoginC');
        //  }
	 	 // $this->load->model('TemplateM');	
		header('Cache-Control: no-cache, must-revalidate, max-age=0');
		header('Cache-Control: post-check=0, pre-check=0', false);
	}

	public function index(){

	}

	public function get_beasiswa(){
		if ($this->session->userdata('logged_in')){
			$username = $this->session->userdata('username');
			$data['list_beasiswa']=$this->BeasiswaM->get_list_negara()->result();
			$data['beasiswa_univ']=$this->BeasiswaM->beasiswa_univ()->result();
			$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
			$this->load->view('pencari/pencarian_beasiswa', $data);
		}else{
			redirect('Login');
		}

	}





	public function scrapping_by_universitas(){

		$result=array();
		$id_universitas=$this->input->post('keyword_universitas');
		$hasil = $this->BeasiswaM->get_url_beasiswa($id_universitas);
		$nama_universitas = $hasil->nama_universitas;
		
		$html_load = file_get_html($hasil->url);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->children(0)->children(0)->children(0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->children(0)->children(0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}

		return $result;


	}

	public function scrapping_by_keyword(){

		$jenjang = $this->input->post('keyword_jenjang');
		$kategori_beasiswa = $this->input->post('keyword_kategori_beasiswa');
		$negara = $this->input->post('keyword_negara');

		$result=array();

		if($jenjang != '' AND $kategori_beasiswa != '' AND $negara!= ''){

			$hasil = $this->BeasiswaM->get_url_beasiswa_umum_all($jenjang, $kategori_beasiswa, $negara);
			$html_load = file_get_html($hasil->url_beasiswa_umum);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->children(0)->children(0)->children(0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->children(0)->children(0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}
			

		}else if($jenjang != '' AND $kategori_beasiswa == '' AND $negara == ''){

		$hasil = $this->BeasiswaM->get_url_beasiswa_umum_key_jenjang($jenjang)->row();
		$html_load = file_get_html($hasil->url_beasiswa_umum);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->find('h1.entry-title', 0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->find('h1.entry-title', 0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}
			


		}else if($jenjang == '' AND $kategori_beasiswa != '' AND $negara == ''){

			$hasil = $this->BeasiswaM->get_url_beasiswa_umum_key_kategori_beasiswa($kategori_beasiswa)->row();
			$html_load = file_get_html($hasil->url_beasiswa_umum);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->find('h1.entry-title', 0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->children(0)->children(0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}

		}else if($jenjang == '' AND $kategori_beasiswa == '' AND $negara != ''){

			$hasil = $this->BeasiswaM->get_url_beasiswa_umum_key_negara($negara)->row();
			$html_load = file_get_html($hasil->url_beasiswa_umum);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->find('h1.entry-title', 0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->children(0)->children(0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}

		}else if($jenjang != '' AND $kategori_beasiswa != '' AND $negara == ''){

			$hasil = $this->BeasiswaM->get_url_beasiswa_umum_key_jenjang_kategori_beasiswa($jenjang, $kategori_beasiswa)->row();
			$html_load = file_get_html($hasil->url_beasiswa_umum);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->children(0)->children(0)->children(0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->children(0)->children(0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}

		}else if($jenjang != '' AND $kategori_beasiswa == '' AND $negara != ''){

			$hasil = $this->BeasiswaM->get_url_beasiswa_umum_key_jenjang_negara($jenjang, $negara)->row();
			$html_load = file_get_html($hasil->url_beasiswa_umum);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->children(0)->children(0)->children(0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->children(0)->children(0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}

		}else if($jenjang == '' AND $kategori_beasiswa != '' AND $negara != ''){

			$hasil = $this->BeasiswaM->get_url_beasiswa_umum_key_jenjang_kategori($kategori_beasiswa, $negara)->row();
			$html_load = file_get_html($hasil->url_beasiswa_umum);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {

				foreach ($data->find('main#main') as $value) {

					foreach ($value->find('article') as $a) {

						$search = array(
							'Hai sobat Beasiswa.ID',
							'Hai Sobat Beasiswa.ID!', 
							'Hai Sobat Beasiswa.ID !',
							'Hai sobat Beasiswa.ID!',
							'Hai, Sobat Beasiswa.ID',
							'!'
						);

						$newstring = '';

						$result[$i] = array (
							'judul'=> $a->children(0)->children(0)->children(0)->plaintext,
							'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
							'link'=> $a->children(0)->children(0)->children(0)->href
						);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");

						$i++;


					}



				}
				
			}		

		}

		}

			
			return $result;


	}

	public function pencarian_beasiswa(){

		$keyword_jenjang=$this->input->post('keyword_jenjang');
		$keyword_kategori=$this->input->post('keyword_kategori_beasiswa');
		$keyword_negara= $this->input->post('keyword_negara');

		$result = $this->scrapping_by_keyword();

		// $cek=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->num_rows();

		$data =  array(
			"keyword_jenjang"=>$keyword_jenjang,
			"keyword_kategori"=>$keyword_kategori,
			"keyword_negara"=>$keyword_negara

		);

		$data['hasil']=$result;

		// if($cek > 0 ){

			// $data['pencarian_beasiswa']=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->result();
		$this->load->view('pencari/detail_pencarian_beasiswa', $data);
		// }
		
	}




	public function tampil_beasiswa_univ(){

		$keyword_universitas = $this->input->post('keyword_universitas');

		$result = $this->scrapping_by_universitas();


		$data =  array(
			
			'keyword_universitas'=>$this->db->where('id_universitas', $keyword_universitas)->get('universitas')->row()->nama_universitas,
			'id_pencari'=>$this->session->userdata['id_pencari']
		);
				// $this->PencarianM->insertPencarian($data);

		$data['pencarian_beasiswa_by_univ']=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->result();

		$data['hasil']=$result;
		$data['detail_univ']=$this->UniversitasM->get_full_univ($keyword_universitas)->row_array();

		$this->load->view('pencari/detail_pencarian_beasiswa_by_univ', $data);


	}


	public function scrapping_detail_beasiswa_by_universitas(){

		$url_detail = $this->input->post('link');



		// 

		$html_load = file_get_html($url_detail);
		$result=array();
		$i = 0;

		if($html_load && is_object($html_load) && isset($html_load->nodes)){

			
			foreach ($html_load->find('div#ht-page #ht-content .ht-container h1') as $data ) {
				$result[$i]['title'] = $data->plaintext;
			}

			$i = 0;
			
			$counter = 0;

			foreach ($html_load->find('div#primary') as $a ) {
				foreach ($a->find('main#main') as $b ) {
					foreach ($b->find('div.entry-content') as $hasil ) {
						if ($counter == 0) {
							$hasil->find('div.apss-social-share', 0)->outertext = '';
							$hasil->find('div.entry-meta', 0)->outertext = '';
							$hasil->find('center', 0)->outertext = '';
							$hasil->find('p', 0)->outertext = '';
							$hasil->find('div.post-views', 0)->outertext = '';
							$hasil->find('div#jp-relatedposts', 0)->outertext = '';
							$hasil->find('div.fb-comments', 0)->outertext = '';
							$hasil->find('h3', -1)->outertext = '';
						// $hasil->find('iframe', 0)->outertext = '';
							$counter++;
						}


						$result[$i]['description'] = $hasil->outertext;
						$i++;
					}
				}
			}
			

		}

		return $result;

	}

	public function tampil_detail_beasiswa_univ(){

		$result = $this->scrapping_detail_beasiswa_by_universitas();
		$data['hasil']=$result;
		$this->load->view('pencari/detail_list_beasiswa_univ', $data);
	}


	public function pencarian_beasiswa_by_univ(){
		if ($this->session->userdata('logged_in')){
			$keyword_universitas=$this->input->post('nama_univ');

			$cek=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->num_rows();


			$data =  array(
				"keyword_universitas" => $keyword_universitas
			);


			$data['pencarian_beasiswa_by_univ']=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->result();
			$this->load->view('pencari/detail_pencarian_beasiswa_by_univ', $data);
		}else{
			redirect("login");
		}

	}
}


<?php if(!defined('BASEPATH'))exit('No direct   script access allowed');    
         
class Login extends CI_Controller      
{   
     public function __construct()  
     {  
         parent::__construct(); 
         $this->load->model('LoginM');  
         $this->load->model('PencariM');  
         $this->load->model('LoginAdmin'); 
         $this->load->library('session');
         
     }

     public function index(){
        $this->load->view('pencari/login');
     }

     public function signin(){
        session_start();
        if($this->input->post('submit')){

        }

        $username=$this->input->post('username');
        $password=$this->input->post('password');
        $ceknum=$this->LoginM->ceknum($username, $password)->num_rows();
        $ceknumAdmin=$this->LoginM->ceknumAdmin($username,$password)->num_rows();
        $queryUser=$this->LoginM->ceknum($username,$password)->row();
        $queryAdmin=$this->LoginM->ceknumAdmin($username,$password)->row();
        $cek=$this->PencariM->cekStatus($username)->num_rows();
        

        if( $ceknum > 0){
              $userData = array(
                'id_pencari' => $queryUser->id_pencari,
                'username' => $queryUser->username,
                'password' => $queryUser->password,
                'status' => $queryUser->status,
                'logged_in' => TRUE
              );
              $this->session->set_userdata($userData);
              $status=$this->LoginM->cekStatus($username);
              foreach($status->result_array() as $key){
              if($key['status'] == "aktif"){
                 redirect('Awal');
                }else{
                  $this->session->set_flashdata('error','Anda belum melakukan verifikasi akun, silahkan verifikasi terlebih dahulu melalui email');
                 redirect('Awal/login');
                }
             }
          }else if($ceknumAdmin>0){
                $userDataAdmin = array(

                'id_admin' => $queryAdmin->id_admin,
                'username' => $queryAdmin->username,
                'password' => $queryAdmin->password,
                'logged_in' => TRUE
              );

              $this->session->set_userdata($userDataAdmin);

            // $userData = array(
            //     'username' => $query->username,
            //     'password' => $query->password,
            //     'logged_in' => TRUE
            //   );
            $this->session->set_userdata('username', $username);
            $this->session->set_userdata('id_pencari', $id_pencari);



            redirect('AdminC/get_dashboard');
        // $this->session->set_userdata($userData);
        //         if ($this->session->userdata('peran') == "admin"){
        //             redirect('Awal');
        //         }else if ($this->session->userdata('peran') == "logistik"){
        //             redirect('Awal');
        //         }

             
            }else{
                $this->session->set_flashdata('error','Username dan Password Salah');
                redirect('Awal/login');
            
            }
   
        }
      }






















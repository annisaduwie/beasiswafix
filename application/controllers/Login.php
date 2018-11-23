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
        $ceknum=$this->LoginM->ceknum($username,$password)->num_rows();
        $ceknumAdmin=$this->LoginAdmin->ceknumAdmin($username,$password)->num_rows();
        $query=$this->LoginM->ceknum($username,$password)->row();
        $cek=$this->PencariM->cekStatus($username)->num_rows();
        

        if( $ceknum > 0){

          
              $userData = array(
                'id_pencari' => $query->id_pencari,
                'username' => $query->username,
                'password' => $query->password,
                'status' => $query->status,
                'logged_in' => TRUE
              );

              $this->session->set_userdata($userData);

              if ($this->session->userdata('status') == "belum aktif"){
                 $this->session->set_flashdata('error','Akun belum diverifikasi, silahkan verifikasi dari email anda');
              }else

            
              redirect('Awal');
        // $this->session->set_userdata($userData);
        //         if ($this->session->userdata('peran') == "admin"){
        //             redirect('Awal');
        //         }else if ($this->session->userdata('peran') == "logistik"){
        //             redirect('Awal');
        //         }

               }
               else if($ceknumAdmin>0){
                
                $userData = array(
                'username' => $query->username,
                'password' => $query->password,
                'status' => $query->status,
                'logged_in' => TRUE
              );

              $this->session->set_userdata($userData);

            // $userData = array(
            //     'username' => $query->username,
            //     'password' => $query->password,
            //     'logged_in' => TRUE
            //   );
            $this->session->set_userdata('username', $username);
            $this->session->set_userdata('id_pencari', $id_pencari);

            redirect('AdminC');
        // $this->session->set_userdata($userData);
        //         if ($this->session->userdata('peran') == "admin"){
        //             redirect('Awal');
        //         }else if ($this->session->userdata('peran') == "logistik"){
        //             redirect('Awal');
        //         }

            }else
                $this->session->set_flashdata('error','Username dan Password Salah');
                redirect('Login');
            
            // else 
            //     $this->session->set_flashdata('error','Username dan Password Salah');
            //     redirect('Login');
            

}


           
        }






















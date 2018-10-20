 <?php 

function in_access_admin()
{
    $ci=& get_instance();
    if($ci->session->userdata('admin')){
        redirect('Awal/homeAdmin');
    }
}

function no_access_admin()
{
    $ci=& get_instance();

           if(!$ci->session->userdata('username')){

        redirect('Awal/login');

    }

}

function cekAdmin(){
    $ci=& get_instance();
    $username = $ci->session->userdata('username');
    $cek1 = $ci->db->query("SELECT * FROM admin WHERE username= '$username'")->num_rows();
    $cek2 = $ci->db->query("SELECT * FROM pencari WHERE username= '$username'")->num_rows();

    if($cek1 >0){
        return TRUE;
    } else if($cek2 < 1){
        return TRUE;
    } else{
        redirect('Awal');
    }

}

function in_access_pencari()
{
    $ci=& get_instance();
    if($ci->session->userdata('pencari')){
        redirect('admin');
    }
}

function no_access_pencari()
{
    $ci=& get_instance();
    if(!$ci->session->userdata('pencari')){
        redirect('awal');
    }
}

function get_idpencarian(){
    $ci=& get_instance();
    $q = $ci->db->query("SELECT max(id_pencarian) as id_pencarian from pencarian")->row_array();
    return $q['id_pencarian'];
}



?>
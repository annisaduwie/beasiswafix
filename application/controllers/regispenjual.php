<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class regispenjual extends REST_Controller  {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

    function index_post() {
        $data = array(
            'nama'   => $this->post('nama'),
            'no_identitas'   => $this->post('nim/nis'),
            'username'       => $this->post('username'),
            'password'       => md5($this->post('password')),
            'email' => $this->post('email'),
            'tingkatan' => $this->post('tingkatan'));

        $insert = $this->db->insert('pencari', $data);
        if ($insert) {
            echo json_encode(array('status' => True ));
        } 
    }
	
}
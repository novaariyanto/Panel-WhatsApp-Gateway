<?php

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('auth_model');
        if (!$this->auth_model->current_user()) {
           
            redirect('auth/login');
        }
        $data_user =$this->auth_model->current_user(); 
        if($data_user->level !== "2"){
            redirect('/dashboard');
        }
        $this->load->model('setting_model');
        $this->load->model('user_model');
		$this->load->model('messages_model');
        $this->load->library('whatsva');
    }

    public function index()
    {
        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();

        $page = @$_GET['page'];
		$limit = 10;
		if(!@$page){
			$start = 0;
		}else{
			$start = $page * $limit;
			
		}

        $data['devices'] = $this->user_model->getAll($start,$limit);
       
        $data['devices_count']= $this->user_model->getCount();

        $this->load->view('layouts/header', $data);
        $this->load->view('admin/user/list', $data);
        $this->load->view('layouts/footer');

    }
    public function add()
    {
        $this->load->library('form_validation');

        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();


        $rules = $this->user_model->rules();
        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == false) {

            $this->load->view('layouts/header', $data);
            $this->load->view('admin/user/add', $data);
            $this->load->view('layouts/footer');
            return;
        }
        $username = $this->input->post('username');
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $level = $this->input->post('level');
        if ($this->user_model->insert($username,$email,$password,$level)) {
            redirect('./user');
        }
  
 
        $this->load->view('layouts/header', $data);
        $this->load->view('admin/user/add', $data);
        $this->load->view('layouts/footer');

    }
    public function delete($id)
    {
		if($this->user_model->delete($id)){
            redirect('/user');
        }
    }
    public function logoutInstance($device)
    {
		$datasetting = $this->setting_model->getSetting();
        $data_device = $this->user_model->getbyId($device);
        if (count((array) $data_device)) {
            $qr = $this->whatsva->resetInstance($data_device->api_key,$datasetting->panel_key);
            $qr = json_decode($qr);
            if ($qr->success) {
				$updateStatus = $this->user_model->update(["status" => 1], $data_device->id);
                redirect('./device');
            }
        }
    }
    public function authQr($device)
    {
		$datasetting = $this->setting_model->getSetting();
        $data_device = $this->user_model->getbyId($device);
        if (count((array) $data_device)) {
            $qr = $this->whatsva->generatedQr($data_device->api_key,$datasetting->panel_key);
            $qr = json_decode($qr);
            if ($qr->success) {
                $qrCode = $qr->data->qr;

            } else {
                if ($qr->message === "Paired device") {
                    redirect('./device');
                } else if ($qr->message === "The qr code has been generated, please scan it with your whatsapp account") {
                    // print_r($qr);
                    // die;
                } else {
                    // print_r($qr);
                    // die;
                }

            }
        } else {
            redirect('./device');
        }
        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['device'] = $data_device;

        $this->load->view('layouts/header', $data);
        $this->load->view('admin/user/authqr', $data);
        $this->load->view('layouts/footer');
    }
    // ... ada kode lain di sini ...
}

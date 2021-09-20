<?php

class Message extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		$this->load->model('auth_model');
		if(!$this->auth_model->current_user()){
			redirect('auth/login');
		}
        $data_user =$this->auth_model->current_user(); 
        if($data_user->level !== "1"){
            redirect('/dashboard');
        }
		$this->load->model('messages_model');
		$this->load->model('setting_model');
		$this->load->model('device_model');
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
		$data['messages'] = $this->messages_model->getAll($start,$limit);
		$data['messages_count']= $this->messages_model->getCount();

        $this->load->view('layouts/header', $data);
        $this->load->view('client/message/list', $data);
        $this->load->view('layouts/footer');
    }
	public function add()
    {
        $this->load->library('form_validation');

        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] =     $this->auth_model->current_user();
        $data['devices'] = $this->device_model->getAlls();

        $rules = $this->device_model->rules();
        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == false) {

            $this->load->view('layouts/header', $data);
            $this->load->view('client/message/add', $data);
            $this->load->view('layouts/footer');
            return;
        }
        $devicename = $this->input->post('device_name');
		$datasetting = $this->setting_model->getSetting();
        if ($this->device_model->add($devicename, $datasetting->panel_key)) {
            redirect('./device');
        } else {
            $this->session->set_flashdata('message_add_device_error', 'Add Device Failure');
        }
     
        $this->load->view('layouts/header', $data);
        $this->load->view('device/add', $data);
        $this->load->view('layouts/footer');

    }
	// ... ada kode lain di sini ...
}
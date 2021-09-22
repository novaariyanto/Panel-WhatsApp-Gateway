<?php

class Dashboard extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('auth_model');
		if(!$this->auth_model->current_user()){
			redirect('/login');
		}
        $this->load->model('setting_model');
        $this->load->model('messages_model');
        $this->load->model('device_model');
	}
    public function index()
    {
        
		$data['messages_count']= $this->messages_model->getCount();
        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['devices'] = $this->device_model->getAlls();

	
    	$this->load->view('layouts/header',$data);
		if($data['current_user']->level === "2"){
			$this->load->view('admin/dashboard/index',$data);
		}else{
			$this->load->view('client/dashboard/index',$data);
		}
    	$this->load->view('layouts/footer');
    }
	// ... ada kode lain di sini ...
}
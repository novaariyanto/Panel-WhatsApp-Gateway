<?php

class MessageIn extends CI_Controller
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
		$this->load->model('messageIn_model');
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
		$data['messages'] = $this->messageIn_model->getAll($start,$limit);
		$data['messages_count']= $this->messageIn_model->getCount();

        $this->load->view('layouts/header', $data);
        $this->load->view('client/messageIn/list', $data);
        $this->load->view('layouts/footer');
    }
	
	// ... ada kode lain di sini ...
}
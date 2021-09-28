<?php

class Autoreply extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('auth_model');
        if (!$this->auth_model->current_user()) {
            redirect('auth/login');
        }
        $data_user =$this->auth_model->current_user(); 
        if($data_user->level !== "1"){
            redirect('/dashboard');
        }
        $this->load->model('setting_model');
        $this->load->model('device_model');
		$this->load->model('messages_model');
        $this->load->library('whatsva');
        $this->load->model('autoreply_model');
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

        $data['devices'] = $this->autoreply_model->getAll($start,$limit);
        $data['devices_count']= $this->autoreply_model->getCount();

        $this->load->view('layouts/header', $data);
        $this->load->view('client/autoreply/list', $data);
        $this->load->view('layouts/footer');

    }
    public function add()
    {
        $this->load->library('form_validation');

        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['devices'] = $this->device_model->getAlls();

        $rules = $this->autoreply_model->rules();
        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == false) {

            $this->load->view('layouts/header', $data);
            $this->load->view('client/autoreply/add', $data);
            $this->load->view('layouts/footer');
            return;
        }

        $receive = $this->input->post('receive');
        $reply = $this->input->post('reply');
        $type = $this->input->post('type');
        $instance = $this->input->post('instance_key');

		$datasetting = $this->setting_model->getSetting();
        if ($this->autoreply_model->add($instance,$receive,$reply,$type)) {
            redirect('./autoreply');
        }
      
        $this->load->view('layouts/header', $data);
        $this->load->view('client/autoreply/add', $data);
        $this->load->view('layouts/footer');

    }
    public function edit($id)
    {   
        $this->load->library('form_validation');

        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['devices'] = $this->device_model->getAlls();
        $data['webhook'] = $this->autoreply_model->getbyId($id);
        
        $rules = $this->autoreply_model->rules();
        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == false) {

            $this->load->view('layouts/header', $data);
            $this->load->view('client/autoreply/edit', $data);
            $this->load->view('layouts/footer');
            return;
        }

        $receive = $this->input->post('receive');
        $reply = $this->input->post('reply');
        $type = $this->input->post('type');
        $instance = $this->input->post('instance_key');
        $data = [
            "reply"=>$reply,
            "receive"=>$receive,
            "instance_key"=>$instance,
            "type"=>$type
        ];
		
        if ($this->autoreply_model->update($data,$id)) {
            redirect('./autoreply');
        }
      
        $this->load->view('layouts/header', $data);
        $this->load->view('client/autoreply/edit', $data);
        $this->load->view('layouts/footer');
    }
    public function delete($id)
    {
        if ($this->autoreply_model->delete($id)) {
            redirect('./autoreply');
        }
      
    }
  
  
    // ... ada kode lain di sini ...
}

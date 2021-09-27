<?php

class Device extends CI_Controller
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

        $data['devices'] = $this->device_model->getAll($start,$limit);
        $data['devices_count']= $this->device_model->getCount();

        $this->load->view('layouts/header', $data);
        $this->load->view('client/device/list', $data);
        $this->load->view('layouts/footer');

    }
    public function add()
    {
        $this->load->library('form_validation');

        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['devices'] = $this->device_model->getAlls();

        $rules = $this->device_model->rules();
        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == false) {

            $this->load->view('layouts/header', $data);
            $this->load->view('client/device/add', $data);
            $this->load->view('layouts/footer');
            return;
        }
        $devicename = $this->input->post('device_name');
		$datasetting = $this->setting_model->getSetting();
        if ($this->device_model->add($devicename, $datasetting->panel_key)) {
            redirect('./device');
        }
      
        $this->load->view('layouts/header', $data);
        $this->load->view('client/device/add', $data);
        $this->load->view('layouts/footer');

    }
    public function getQR($device)
    {
		$datasetting = $this->setting_model->getSetting();
        $data_device = $this->device_model->getbyId($device);
        if ($data_device) {
            $data = $this->whatsva->instancecData($data_device->api_key,$datasetting->panel_key);
            $data = json_decode($data);
            if ($data->success) {
                if ($data->data->instance_status === "connected") {
                    $updateStatus = $this->device_model->update(["status" => 2], $data_device->id);
                }
                echo json_encode($data);

            }

        }
    }
    public function logoutInstance($device)
    {
		$datasetting = $this->setting_model->getSetting();
        $data_device = $this->device_model->getbyId($device);
        if (count((array) $data_device)) {
            $qr = $this->whatsva->resetInstance($data_device->api_key,$datasetting->panel_key);
            $qr = json_decode($qr);
            if($qr){
                if ($qr->success) {
                    $updateStatus = $this->device_model->update(["status" => 1], $data_device->id);
                    redirect('./device');
                }
            }else{
                // echo json_encode(["success"=>false,"message"=>"can't connect server"]);
                redirect('./device');
            }
           
        }
    }
    public function authQr($device)
    {
    

		$datasetting = $this->setting_model->getSetting();
        $data_device = $this->device_model->getbyId($device);
     
        if (count((array) $data_device)) {
            $qr = $this->whatsva->generatedQr($data_device->api_key,$datasetting->panel_key);
            $qr = json_decode($qr);
            if($qr){
                if ($qr->success) {
              
    
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
            }else{
                echo json_encode(["success"=>false,"message"=>"cant connect to server"]);
            }
            
        } else {
            redirect('./device');
        }
        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['device'] = $data_device;

        $this->load->view('layouts/header', $data);
        $this->load->view('client/device/authqr', $data);
        $this->load->view('layouts/footer');
    }
    // ... ada kode lain di sini ...
}

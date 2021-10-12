<?php

class Tools extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('whatsva');
        header("Content-Type: application/json");
        $this->load->model('messages_model');
        $this->load->model('setting_model');
    }

    public function checkNumber()
    {

        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);

        if (!@$data->instance_key) {
            $response = ["success" => false, "message" => "instance_key empty"];
        } else if (!@$data->jid) {
            $response = ["success" => false, "message" => "jid empty"];
        } else {
            $datasetting = $this->setting_model->getSetting();
            $cekstatus = $this->whatsva->instancecData($data->instance_key, $datasetting->panel_key);
            $cekstatus = json_decode($cekstatus);

            if ($cekstatus) {
                if ($cekstatus->success) {
                    if ($cekstatus->data->instance_status) {
                        $response = $this->whatsva->checkNumber($data->instance_key, $data->jid);
                        $response = json_decode($response);
                        if ($response) {
                            if ($response->success) {
                                $response = ["success" => true, "message" => $response->message];
                            }
                        } else {
                            $response = ["success" => false, "message" => "cant connect to server"];
                        }

                    } else {
                        $response = ["success" => false, "message" => "your instance/ device is disconnect"];
                    }
                } else {
                    $response = ["success" => false, "message" => $cekstatus->message];
                }
            } else {
                $response = ["success" => false, "message" => "can't connect server "];
            }

        }
        echo json_encode($response);
    }

}

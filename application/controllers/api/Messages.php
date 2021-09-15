<?php

class Messages extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('whatsva');
        header("Content-Type: application/json");
        $this->load->model('messages_model');
        $this->load->model('setting_model');
    }
   
    public function sendMessageText()
    {
       
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->message) {
            $response = json_encode(["success" => false, "message" => "message empty"]);
        } else {
            $datasetting = $this->setting_model->getSetting();
            $response = $this->whatsva->sendMessageText($data->instance_key, $data->jid, $data->message,$datasetting->panel_key);
            $response = json_decode($response);
            if ($response->success) {
                $type = "chat-text";
                $status = "received";
                $date_time = Date('Y-m-d h:m:s');
                $this->messages_model->insert($data->instance_key, $data->message, $type, $status, $date_time, $response);
            }
        }
        echo json_encode($response);
    }
    public function sendImageUrl()
    {
        
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->imageUrl) {
            $response = json_encode(["success" => false, "message" => "imageUrl empty"]);
        } else {
            $datasetting = $this->setting_model->getSetting();
            $response = $this->whatsva->sendImageUrl($data->instance_key, $data->jid, $data->imageUrl, @$data->caption,$datasetting->panel_key);
            $response = json_decode($response);
            if ($response->success) {
                $type = "chat-image";
                $status = "received";
                $date_time = Date('Y-m-d h:m:s');
                $this->messages_model->insert($data->instance_key, $data->imageUrl, $type, $status, $date_time, $response);
            }
        }
        echo json_encode($response);
    }
    public function sendDocumentUrl()
    {
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->documentUrl) {
            $response = json_encode(["success" => false, "message" => "documentUrl empty"]);
        } else {
            $datasetting = $this->setting_model->getSetting();
            $response = $this->whatsva->sendDocumentUrl($data->instance_key, $data->jid, $data->documentUrl,$datasetting->panel_key);
            $response = json_decode($response);
            if ($response->success) {
                $type = "chat-document";
                $status = "received";
                $date_time = Date('Y-m-d h:m:s');
                $this->messages_model->insert($data->instance_key, $data->documentUrl, $type, $status, $date_time, $response);
            }
        }
        echo json_encode($response);
    }
    public function sendVideoUrl()
    {
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->videoUrl) {
            $response = json_encode(["success" => false, "message" => "videoUrl empty"]);
        } else {
            $datasetting = $this->setting_model->getSetting();
            $response = $this->whatsva->sendVideoUrl($data->instance_key, $data->jid, $data->videoUrl, @$data->caption,$datasetting->panel_key);
            $response = json_decode($response);
            if ($response->success) {
                $type = "chat-video";
                $status = "received";
                $date_time = Date('Y-m-d h:m:s');
                $this->messages_model->insert($data->instance_key, $data->videoUrl, $type, $status, $date_time, $response);
            }
        }
        echo json_encode($response);
    }
    public function sendLocation()
    {
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->coordinates) {
            $response = json_encode(["success" => false, "message" => "coordinate empty"]);
        } else {
            $coordinate = $data->coordinates;
            if (!@$coordinate->lat) {
                $response = json_encode(["success" => false, "message" => "lat empty"]);
            } else if (!@$coordinate->long) {
                $response = json_encode(["success" => false, "message" => "long empty"]);
            }
            $datasetting = $this->setting_model->getSetting();
            $response = $this->whatsva->sendLocation($data->instance_key, $data->jid, $coordinate->lat, $coordinate->long,$datasetting->panel_key);
            $response = json_decode($response);
            if ($response->success) {
                $type = "chat-location";
                $status = "received";
                $date_time = Date('Y-m-d h:m:s');
                $this->messages_model->insert($data->instance_key, json_encode($response->data), $type, $status, $date_time, $response);
            }
        }
        echo json_encode($response);
    }
    public function sendVCard()
    {
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->fullname) {
            $response = json_encode(["success" => false, "message" => "fullname empty"]);
        } else if (!@$data->organization) {
            $response = json_encode(["success" => false, "message" => "organization empty"]);
        } else if (!@$data->phoneNumber) {
            $response = json_encode(["success" => false, "message" => "phoneNumber empty"]);
        } else {
            $datasetting = $this->setting_model->getSetting();
            $response = $this->whatsva->sendVCard($data->instance_key, $data->jid, $data->fullname, $data->organization, $data->phoneNumber,$datasetting->panel_key);
            $response = json_decode($response);
            if ($response->success) {
                $type = "chat-vcard";
                $status = "received";
                $date_time = Date('Y-m-d h:m:s');
                $this->messages_model->insert($data->instance_key,  json_encode($response->data), $type, $status, $date_time, $response);
            }
        }
        echo json_encode($response);
    }
    public function sendListMessage()
    {
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->buttonText) {
            $response = json_encode(["success" => false, "message" => "buttonText empty"]);
        } else if (!@$data->description) {
            $response = json_encode(["success" => false, "message" => "description empty"]);
        } else if (!@$data->sections) {
            $response = json_encode(["success" => false, "message" => "sections empty"]);
        } else {
            $sections = $data->sections[0];
            if (!@$sections->title) {
                $response = json_encode(["success" => false, "message" => "section title empty"]);
            } else if (!@$sections->rows) {
                $response = json_encode(["success" => false, "message" => "section rows empty"]);
            } else {
                $listMessage = $sections->rows;
                //     echo json_encode($listMessage);
                //    die;
                $datasetting = $this->setting_model->getSetting();
                $response = $this->whatsva->sendListMessage($data->instance_key, $data->jid, $data->buttonText, $data->description, $sections->title, $listMessage,$datasetting->panel_key);
                $response = json_decode($response);
                if ($response->success) {
                    $type = "chat-list-message";
                    $status = "received";
                    $date_time = Date('Y-m-d h:m:s');
                    $this->messages_model->insert($data->instance_key, json_encode($response->data), $type, $status, $date_time, $response);
                }
            }

        }
        echo json_encode($response);
    }
    public function sendButtonMessage()
    {
        // Takes raw data from the request
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        if (!@$data->instance_key) {
            $response = json_encode(["success" => false, "message" => "instance_key empty"]);
        } else if (!@$data->jid) {
            $response = json_encode(["success" => false, "message" => "jid empty"]);
        } else if (!@$data->contentText) {
            $response = json_encode(["success" => false, "message" => "contentText empty"]);
        } else if (!@$data->footerText) {
            $response = json_encode(["success" => false, "message" => "footerText empty"]);
        } else if (!@$data->buttons) {
            $response = json_encode(["success" => false, "message" => "buttons empty"]);
        } else {
            $buttons = $data->buttons;
            $datasetting = $this->setting_model->getSetting();
            $response = $this->whatsva->sendButtonMessage($data->instance_key, $data->jid, $data->contentText, $data->footerText, $buttons,$datasetting->panel_key);
            $response = json_decode($response);
            if ($response->success) {
                $type = "chat-button-message";
                $status = "received";
                $date_time = Date('Y-m-d h:m:s');
                $this->messages_model->insert($data->instance_key,  json_encode($response->data), $type, $status, $date_time, $response);
            }
        }
        echo json_encode($response);
    }

}

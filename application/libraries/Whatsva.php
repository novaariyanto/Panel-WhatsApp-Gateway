<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Whatsva 
{
    private $_CI;
    public function __construct()
    {
        $this->_CI = & get_instance();
        $this->_CI->load->model('setting_model','sm');
    }


    public function ws_url()
    {
    
        return "https://multidevice.whatsva.com";
    }
    public function some_method()
    {
        return $this->ws_url();

    }
    public function initInstance($device_name,$panel_key)
    {
        $data = [
			"instance_name"=> $device_name,
			"panel_key"=>$panel_key
		];
        $this->ws_url()."/api/initInstance";
        return $this->curlData($this->ws_url() . "/api/initInstance", $data);
    }
    // Instance Data
    public function instancecData($instance_key, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/instance", $data);
    }
    public function generatedQr($instance_key, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/generateQr", $data);
    }
    public function resetInstance($instance_key, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/instanceReset", $data);
    }
    public function updateMultideviceInstance($instance_key, $panel_key,$multidevice)
    {
        $data = [
            "instance_key" => $instance_key,
            "panel_key" => $panel_key,
            'multidevice'=>$multidevice
        ];
        return $this->curlData($this->ws_url() . "/api/update_multidevice", $data);
    }
    // End Instance


    // Messaging
    public function sendMessageText($instance_key, $jid, $message, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "message" => $message
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendMessageText", $data);
    }
    public function sendImageUrl($instance_key, $jid, $imageUrl, $caption, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "imageUrl" => $imageUrl,
            "caption" => $caption
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendImageUrl", $data);
    }
    public function sendDocumentUrl($instance_key, $jid, $documentUrl, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "documentUrl" => $documentUrl
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendDocumentUrl", $data);
    }
    public function sendVideoUrl($instance_key, $jid, $videoUrl, $caption, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "videoUrl" => $videoUrl,
            "caption" => $caption
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendVideoUrl", $data);
    }
    public function sendLocation($instance_key, $jid, $lat, $long, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "coordinates" => [
                "lat" => $lat,
                "long" => $long,
            ], "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendLocation", $data);
    }
    public function sendVCard($instance_key, $jid, $fullname, $organization, $phoneNumber, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "fullname" => $fullname,
            "organization" => $organization,
            "phoneNumber" => $phoneNumber
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendVCard", $data);
    }
    public function sendListMessage($instance_key, $jid, $buttonText, $description, $sectionTitle, $listMessage, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "buttonText" => $buttonText,
            "description" => $description,
            "sections" => [[
                "title" => $sectionTitle,
                "rows" => $listMessage,
            ]]
            , "panel_key" => $panel_key];

        return $this->curlData($this->ws_url() . "/api/sendListMessage", $data);
    }
    public function sendButtonMessage($instance_key, $jid, $contentText, $footerText, $buttons, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "contentText" => $contentText,
            "footerText" => $footerText,
            "buttons" => $buttons
            , "panel_key" => $panel_key];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/sendButtonMessage", $data);
    }
    public function sendButtonLinkMessage($instance_key, $jid, $content, $buttons, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid,
            "content" => $content,
            "buttons" => $buttons
            , "panel_key" => $panel_key];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/sendButtonUrlMessages", $data);
    }
    // End Messaging

    // Group Messaging 

    public function sendMessageTextGroup($instance_key, $jid_group, $message, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "message" => $message
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendMessageTextGroup", $data);
    }
    public function sendImageUrlGroup($instance_key, $jid_group, $imageUrl, $caption, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "imageUrl" => $imageUrl,
            "caption" => $caption
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendImageUrlGroup", $data);
    }
    public function sendDocumentUrlGroup($instance_key, $jid_group, $documentUrl, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "documentUrl" => $documentUrl
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendDocumentUrlGroup", $data);
    }
    public function sendVideoUrlGroup($instance_key, $jid_group, $videoUrl, $caption, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "videoUrl" => $videoUrl,
            "caption" => $caption
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendVideoUrlGroup", $data);
    }
    public function sendLocationGroup($instance_key, $jid_group, $lat, $long, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "coordinates" => [
                "lat" => $lat,
                "long" => $long,
            ], "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendLocationGroup", $data);
    }
    public function sendVCardGroup($instance_key, $jid_group, $fullname, $organization, $phoneNumber, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "fullname" => $fullname,
            "organization" => $organization,
            "phoneNumber" => $phoneNumber
            , "panel_key" => $panel_key];
        return $this->curlData($this->ws_url() . "/api/sendVCardGroup", $data);
    }
    public function sendListMessageGroup($instance_key, $jid_group, $buttonText, $description, $sectionTitle, $listMessage, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "buttonText" => $buttonText,
            "description" => $description,
            "sections" => [[
                "title" => $sectionTitle,
                "rows" => $listMessage,
            ]]
            , "panel_key" => $panel_key];

        return $this->curlData($this->ws_url() . "/api/sendListMessageGroup", $data);
    }
    public function sendButtonMessageGroup($instance_key, $jid_group, $contentText, $footerText, $buttons, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "contentText" => $contentText,
            "footerText" => $footerText,
            "buttons" => $buttons
            , "panel_key" => $panel_key];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/sendButtonMessageGroup", $data);
    }
    public function sendButtonLinkMessageGroup($instance_key, $jid_group, $content, $buttons, $panel_key)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "content" => $content,
            "buttons" => $buttons
            , "panel_key" => $panel_key];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/sendButtonUrlMessagesGroup", $data);
    }



    // End Group Messaging

    // Group Event

    public function createGroup($instance_key, $groupName, $participants)
    {
        $data = [
            "instance_key" => $instance_key,
            "groupName" => $groupName,
            "participants" => $participants];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/createGroup", $data);
    }
    public function makeAdminGroup($instance_key, $jid_group, $participants)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "participants" => $participants];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/makeAdminGroup", $data);
    }
    public function demoteAdminGroup($instance_key, $jid_group, $participants)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "participants" => $participants];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/demoteAdminGroup", $data);
    }
    public function addParticipants($instance_key, $jid_group, $participants)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "participants" => $participants];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/addParticipants", $data);
    }
    public function removeParticipants($instance_key, $jid_group, $participants)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "participants" => $participants];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/removeParticipants", $data);
    }

    public function updateSubjectGroup($instance_key, $jid_group, $subject)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "groupName" => $subject];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/setGroupName", $data);
    }

    public function updateDescriptionGroup($instance_key, $jid_group, $description)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group,
            "description" => $description];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/updateDescriptionGroup", $data);
    }

    public function leaveGroup($instance_key, $jid_group)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/leaveGroup", $data);
    }
    public function inviteCode($instance_key, $jid_group)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/inviteCode", $data);
    }
    public function listParticipants($instance_key, $jid_group)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/listParticipants", $data);
    }
    public function groupInfo($instance_key, $jid_group)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid_group" => $jid_group];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/listParticipants", $data);
    }

    public function listGroup($instance_key)
    {
        $data = [
            "instance_key" => $instance_key ];
        // echo json_encode($data);
        return $this->curlData($this->ws_url() . "/api/listGroup", $data);
    }

    // End Group Event
    
    // tools
    public function checkNumber($instance_key,$jid)
    {
        $data = [
            "instance_key" => $instance_key,
            "jid" => $jid
        ];
        return $this->curlData($this->ws_url() . "/api/checkNumber", $data);
    }
    // end tools
    
    // Core of the Core
    public function curlData($url, $data)
    {
        $datasetting = $this->_CI->sm->getSetting();
        
        // array_push($data);
        $data['panel_key'] = $datasetting->panel_key;
        $data['panel_domain'] = $datasetting->domain;

        $curl = curl_init();

        $payload = json_encode($data);

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $result = curl_exec($ch);
        curl_close($ch);
        return $result;

    }
    // End Core of the Core
}

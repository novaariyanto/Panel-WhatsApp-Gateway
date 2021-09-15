<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Whatsva
{
    public function ws_url()
    {
    
        return "https://multidevice.whatsva.com";
    }
    public function some_method()
    {
        return $this->ws_url();

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

    // End Messaging

    public function curlData($url, $data)
    {
        $curl = curl_init();

        $payload = json_encode($data);

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);
        curl_close($ch);
        return $result;

    }
}

<?php

class Setting_model extends CI_Model
{
	private $_table = "tb_setting";
	const SESSION_KEY = 'id';

    public function rules()
	{
		return [
			[
				'field' => 'app_name',
				'label' => 'Application Name',
				'rules' => 'required'
			],
			[
				'field' => 'domain',
				'label' => 'Domain',
				'rules' => 'required|max_length[255]'
            ],
            [
				'field' => 'panel_key',
				'label' => 'Panel Key',
				'rules' => 'required|max_length[255]'
			]
		];
	}
    public function getSetting()
    {
        $query = $this->db->get_where($this->_table, ['id' => "1"]);
		return $query->row();
    }
    public function update_($app_name,$domain,$panel_key)
	{
        $data = [
			'app_name' => $app_name,
            'domain'   => $domain,
            'panel_key'=> $panel_key
		];
     

        return $this->db->update($this->_table, $data, ['id' => '1']);
	}

   
}
<?php

class Register_model extends CI_Model
{
	private $_table = "tb_user";
	const SESSION_KEY = 'id';

    public function rules()
	{
		return [
			[
				'field' => 'username',
				'label' => 'Username or Email',
				'rules' => 'required'
			],[
				'field' => 'email',
				'label' => 'Email',
				'rules' => 'required|max_length[255]'
			],
			[
				'field' => 'password',
				'label' => 'Password',
				'rules' => 'required|max_length[255]'
			]
		];
	}

	public function register($username,$email, $password)
	{
		$this->db->where('email', $username)->or_where('username', $username);
		$query = $this->db->get($this->_table);
		$user = $query->row();
	

		// cek apakah user sudah terdaftar?
		if ($user) {
			return FALSE;
		}
		// cek apakah passwordnya benar?
	
		$data = [
			'username'=>$username,
			'email'=>$email,
			'password'=> password_hash($password,PASSWORD_DEFAULT),
			'status'=> '1',
			'level' => '1'
		];
		// bikin session
		return $this->db->insert($this->_table,$data);

	}

	
}
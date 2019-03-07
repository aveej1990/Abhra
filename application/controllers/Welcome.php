<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */


	public function index()
	{
		$this->load->helper('form');

		$this->load->helper('url');

		$this->load->view('welcome_message');
	}

	public function insertsuccess()
	{
		
		$this->load->helper('url');

		$this->load->view('succ_message');
	}

	public function add()
	{

		$this->load->helper('url');

		$this->load->helper('form');

		$this->load->database();

		$data = array( 
			'roll_no' => $this->input->post('rno'), 
			'name' => $this->input->post('name'),
			'Designation' => implode(',',$this->input->post('desc')),
			'gender' => $this->input->post('gender'),
		); 

		if($this->db->insert('stud',$data))
		{
			log_message('info', 'Data was inserted'); 
			redirect('Welcome/insertsuccess');
		}
	}

	public function Edit()
	{

		$this->load->helper('form');

		$this->load->helper('url');

		$this->load->database();

		$name=trim($this->uri->segment('3'));

		$data['result']['data']=$this->db->get_where('employee',array('last_name'=>$name))->result();

		$data['result']['oldname']=$name;
		
		//print_r($this->db->last_query());  exit;

		$this->load->view('edit_view',$data);
	}

	public function update()
	{
		$this->load->library('session');
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->database();


		$data = array( 
			'first_name' => $this->input->post('firstname'), 
			'last_name' => $this->input->post('lasname'),
			'description' => $this->input->post('desc'),
			'city' => $this->input->post('city')
		); 

		$oldname= trim($this->input->post('oldname'));

		$this->db->where('last_name',$oldname);

		  $succ=$this->db->update('employee',$data);

	 
		if($succ)
		{
			$this->session->set_flashdata('message', "SUCCESS_MESSAGE_HERE"); 
			redirect('getdetails');
		}
		else
		{

			$this->session->set_flashdata('message', "failure_MESSAGE_HERE"); 
			redirect('getdetails');

		}

		// print_r($this->db->last_query()); 


	}

	public function delete()
	{

		$this->load->library('session');

		$this->load->helper('url');

		$name=trim($this->uri->segment('3'));

		$this->load->database();

		$succ=$this->db->delete('employee',array('last_name'=>$name));
		
		print_r($this->db->last_query());  

		if($succ)
		{
			$this->session->set_flashdata('message', "SUCCESS_MESSAGE_HERE"); 
			redirect('getdetails');
		}
		else
		{

			$this->session->set_flashdata('message', "failure_MESSAGE_HERE"); 
			redirect('getdetails');

		}
	}

}

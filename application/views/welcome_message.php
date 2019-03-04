<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>

	<style type="text/css">

	::selection { background-color: #E13300; color: white; }
	::-moz-selection { background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		margin: 40px;
		font: 13px/20px normal Helvetica, Arial, sans-serif;
		color: #4F5155;
	}

	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
	}

	h1 {
		color: #444;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 19px;
		font-weight: normal;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body {
		margin: 0 15px 0 15px;
	}

	p.footer {
		text-align: right;
		font-size: 11px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 20px 0 0 0;
	}

	#container ,input{
		margin: 10px;
		border: 1px solid #D0D0D0;
		box-shadow: 0 0 8px #D0D0D0;
	}
	#container
	{
			margin-left: 40px;
		max-width:60%;
		max-height:80%;
	}
	#submit
	{

		width:70px;
		height:30px;
		background-color: green;

	}
</style>
</head>
<body>

	<div id="container">
		<?php echo base_url('/Getdetails'); echo "<br>"; ?>
		<?php echo site_url('/////Getdetail');  echo "<br>"; ?>
		<a href="<?php echo site_url(); ?>/Getdetails" >Get join data </a>
		<h1> Student Registration form</h1>
		<div id="body">

			<?php echo form_open('Welcome/add'); ?>

			<label for="roolno">Roll no</label>
			<input type="text" name="rno" /><br />

			<label for="name">name</label>
			<input type="text" name="name" /><br />


			<label for="languages">languages</label>
			<input type="checkbox" name="desc[]"  value="php"/> PHP <input type="checkbox" name="desc[]"  value="java" /> java  <input type="checkbox" name="desc[]"  value="net" /> .net
			<br />

			<label for="gender">Gender</label>
			<input type="radio" name="gender"  value="M"/> Male <input type="radio" name="gender"  value="F" /> female  <input type="radio" name="gender"  value="O" /> Others
			<br />

			<input type="submit" name="submit" value="submit" id='submit'/>

		</form>

		</div>
		</div>

	</body>
	</html>
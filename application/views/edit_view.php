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
		font-size: 19px;x
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

	input[type="text"]
	{
		width:50%;
		height:30px;
	}
</style>
</head>
<body>

	<div id="container">
		<h1> Details Page</h1>
		<div id="body">

			
				<?php 

				echo "<pre>";

				print_r($result);

				//echo $result['data'][0]->description.'<br>';
				  echo 'mmm...'.$result['oldname'];

				  	?>	

				   <?php
				   if(!empty($result['data'][0]))
				   {	

				   echo form_open('welcome/update'); ?>
				   
				   <input type="hidden" name="oldname" value="<?php echo $result['oldname']; ?>" required>
				  	
				  	<label for="Firstname"> First Name:</label>
				  	<input type="text" name="firstname" value="<?php echo $result['data'][0]->first_name; ?>" required>

				  	<label for="Firstname"> Lst Name:</label>
				  	<input type="text" name="lasname" value="<?php echo $result['data'][0]->last_name; ?>" required>
				  	<label for="Firstname"> city:</label>
				  	<input type="text" name="city" value="<?php echo $result['data'][0]->city; ?>" required>
				  	<label for="Firstname"> description:</label>
				  	<input type="text" name="desc" value="<?php echo $result['data'][0]->description; ?>" required>

				    <input type="submit" name="submit"  value="submit">
					
					
				   <?php  } else 
				   {
					   echo "no data found";
				   }					   ?>

				    
		</form>


		</div>
	</div>

</body>
</html> 
<?php
include 'page_header.php';
//print_r($_SESSION);
if(!empty($_POST['submit_me']))
{
	$new_password=$_POST['new_password'];
	$current_password=$_POST['current_password'];
	$select="select id from user_file where user_name='".$_SESSION['uname']."' and password='".addslashes($current_password)."' limit 1";	
	 $result = $conn->query($select);
    if ($result->num_rows >0)
     {
     	$update="update user_file set password='".addslashes($new_password)."' where user_name='".$_SESSION['uname']."' limit 1";
     	$conn->query($update);
     	echo "<script>alert('Password Updated')</script>";
     }
     else
     {
     	echo "<script>alert('Invalid Password');</script>";
     }
}

?>
<form id='form1' name='form1' method=post>
<table>
	<tr>
		<th style='padding:20px;font-size:19px' colspan=2>Change Password</th>
	</tr>
	<tr>
		<th style='text-align:left'>Current Password</th>
		<td><input type='password' name='current_password'>
	</tr>
	<tr>
		<th style='text-align:left'>New Password</th>
		<td><input type='password'  name='new_password'>
	</tr>
	<tr>
		<td colspan=2><input type='submit' value='Submit' name='submit_me'></td>
	</tr>
</table>
</form>
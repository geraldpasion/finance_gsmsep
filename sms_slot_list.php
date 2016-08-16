<?php
include 'page_header.php';
?>

<script>
    function deactivate(trans_num)
    {
    	document.getElementById('status').value="deactivate"
    	document.getElementById('user_id').value=trans_num
         document.getElementById('form1').action = 'sms_slot_list.php'
            document.form1.submit();
    }
    
    function edit_list(trans_num)
    {
         document.getElementById('form1').action = 'master_slot.php?trans_num='+trans_num
            document.form1.submit();
    }
    function check_list(trans_num)
    {
    	if($('#count').val()==$('#max_sms_slot').val())
    	alert("Sms Slot Exceeded")
    	else
    	{
    		document.getElementById('status').value="activate"
    		document.getElementById('user_id').value=trans_num
         document.getElementById('form1').action = 'sms_slot_list.php'
            document.form1.submit();
    	}
    }
    function test_list(phone,sms)
    {
    
    	document.getElementById('status').value="test"
        document.getElementById('form1').action = 'sms_slot_list.php?phone='+phone+"&sms="+sms
            document.form1.submit();
    }
    
</script>
<form id='form1' name='form1' method=post>
<?php



if(!empty($_REQUEST['status']) &&$_REQUEST['status']=='test')
{
	$phone_number=$_REQUEST['phone'];
	$smsc_id=$_REQUEST['sms'];
	sendText("Test",$phone_number,$smsc_id,0);
}
else if(!empty($_REQUEST['status']) )
{
    $status=1;
    if($_REQUEST['status']=="deactivate")
    $status=0;
    $user_id=$_REQUEST['user_id'];
    $update="update sms_slot_file set mas_status=$status where slot_id='$user_id' limit 1";
    $conn->query($update);
    //echo $update;
    if($_REQUEST['status']=="deactivate")
    {
    	$update="update master_address_file set sms_slot='N/A', smsc_id='0' where sms_slot='$user_id' limit 1";
    	$conn->query($update);
    	//echo $update;
    }
}
$mas_status=getRequest('mas_status','');
$user_active="class='active selected_tab '";
$user_inactive="class='tabby'";
$user_all="class='tabby'";
$where="";
if($mas_status=='')
	$mas_status=1;
else if($mas_status==-1)
{
	$user_active="class='tabby'";
	$user_all="class='active selected_tab '";
}
else if($mas_status==2)
{
	$user_active="class='tabby'";
	$user_inactive="class='active selected_tab '";
	$mas_status=0;	
	$where=" where mas_status=0 ";
}

$where=whereMaker($where,'mas_status',$mas_status,-1);
$data=explode("?",$page_name);
$page_name=$data[0];

echo "<input type='hidden' name='status' id='status' >";
echo "<input type='hidden' name='user_id' id='user_id' >";


echo "<table class='table_data'>";
	/*echo "<tr>
            	<td colspan=2>
                	<ul class='nav nav-tabs'>
                    	<li $user_active role='presentation'><a href='".$page_name."?mas_status=1'>Active</a></li>
		                <li $user_inactive role='presentation'><a href='".$page_name."?mas_status=2'>Inactive</a></li>
					    <li $user_all role='presentation'><a href='".$page_name."?mas_status=-1'>All</a></li>
		             </ul>
		          </td>
		    </tr>";
*/
    echo "<tr>";
    $select="select count(id) as count from sms_slot_file where mas_status=1";
    $result = $conn->query($select);
    while($row=$result->fetch_assoc())
	$count=$row['count'];
	echo "<input type='hidden' id='count' value='".$count."'>";
	
	$select="SELECT max_sms_slot FROM `system_parameter_file` limit 1";
	$result = $conn->query($select);
    while($row=$result->fetch_assoc())
	$max_sms_slot=$row['max_sms_slot'];
	echo "<input type='hidden' id='max_sms_slot' value='".$max_sms_slot."'>";
	
	if($count<$max_sms_slot)
        echo "<td style='text-align:left'><a href='master_slot.php'>Add New</a>";
        echo "</td>";
    echo "</tr>";
    echo "<tr>";
    
    $select="SELECT * 
	FROM information_schema.COLUMNS 
	WHERE 
    TABLE_SCHEMA = '$dbname' 
	AND TABLE_NAME = 'sms_slot_file' 
	AND COLUMN_NAME = 'sms_slot_order'";
	$result = $conn->query($select);
	$num_rows = mysql_affected_rows();
	if($num_rows<=0)
	{
		$select="ALTER TABLE `sms_slot_file` ADD `sms_slot_order` INT NOT NULL ;";
		$conn->query($select);
		$select="ALTER TABLE `sms_slot_file` ADD `sms_slot_name` VARCHAR(10) NOT NULL ;";
		$conn->query($select);
		for($a=0;$a<$max_sms_slot;$a++)
    	{
			$update="update sms_slot_file set  sms_slot_order='$a',sms_slot_name='smsc$a' where mas_status=1 and sms_slot_name='' limit 1";
			$conn->query($update);
		}
		
	}
	
    $data=array();
    $select="select * from sms_slot_file where mas_status=1 order by sms_slot_order";
    $result = $conn->query($select);
    while($row=$result->fetch_assoc())
	{
		$data[$row['sms_slot_order']]=array($row['sms_slot'],$row['phone_number'],$row['sms_slot_name'],$row['slot_id']);
    }
    $gsm_array=array('smsc0','smsc1','smsc2','smsc3');
    echo "<tr>";
    	echo "<th>Slot</th>";
    	echo "<th>Slot Name</th>";
    	echo "<th>Phone Number</th>";
    
    	echo "<th>EDIT</th>";
    	echo "<th>Test SMS</th>";
    echo "</tr>";
    for($a=0;$a<$max_sms_slot;$a++)
    {
    	$data2=array('','','',"a".$a);
    	if(!empty($data[$a]))
    	$data2=$data[$a];
    	
    		echo "<tr>";
    			echo "<td>".$gsm_array[$a]."</td>";
    			echo "<td>".$data2[0]."</td>";
    			echo "<td>".$data2[1]."</td>";
    			echo "<td><input type='button' value='EDIT' onclick='edit_list(\"".$data2[3]."\")'></TD>";
    			echo "<td><input type='button' value='Test' onclick='test_list(\"".$data2[1]."\",\"".$gsm_array[$a]."\")'></TD>";
    		echo"</tr>";
    }
    
    //    listMaker('sms_slot_file','sms_slot',array('sms_slot','phone_number','mas_status'),'SMS Slot List',$where);
    
    echo "</tr>";
echo "</table>";

?>
</form>
<?php
include 'page_header.php';

echo "<form name=form1 id=form1 method=post>";
echo "<input type='hidden' id='status' name='status' value=''>";
if(!empty($_POST['status']))
{
    $sms_slot=$_POST['sms_slot'];
    $phone_number=$_POST['phone_number'];
    $sms_slot_name=$_POST['sms_slot_name'];
    $sms_slot_order=$_POST['sms_slot_order'];
    $select="select slot_id from sms_slot_file order by slot_id desc limit 1";
     $result = $conn->query($select);
   	$row = $result->fetch_assoc();
   	$slot_id=$row['slot_id']+1;
    $result=insertMaker('sms_slot_file',array('slot_id','sms_slot','phone_number','sms_slot_order','sms_slot_name'),array($slot_id,$sms_slot,$phone_number,$sms_slot_order,$sms_slot_name));
       echo "<script>alert('Successfully Added New SMS Slot');
       
       document.getElementById('form1').action = 'sms_slot_list.php';
            document.form1.submit();
    </script>";
       
}
//print_r($_POST);
if(!empty($_POST['update_btn']))
{
    $sms_slot=$_POST['sms_slot'];
    $phone_number=$_POST['phone_number'];
    $slot_id=$_POST['slot_id'];
    $sms_slot_name=$_POST['sms_slot_name'];
    $sms_slot_order=$_POST['sms_slot_order'];
    $result=updateMaker('sms_slot_file',array('sms_slot','phone_number','sms_slot_order','sms_slot_name'),array($sms_slot,$phone_number,$sms_slot_order,$sms_slot_name)," where slot_id='$slot_id'");
    //echo $result;
   echo "<script>alert('Successfully Updated New SMS Slot');
        document.getElementById('form1').action = 'sms_slot_list.php';
            document.form1.submit();
    </script>";
}

$trans_num="";
$sms_slot="smsc";
$phone_number="";
$sms_slot_name="";
$order="";
$slot_id=0;
error_reporting(E_ALL);
ini_set('display_errors', '1');
if(!empty($_REQUEST['trans_num']))
{
    $slot_id=$_REQUEST['trans_num'];
    if(substr($slot_id,0,1)=="a")
    {
    	
    	$order=str_replace("a","",$slot_id);
    	$sms_slot="smsc".str_replace("a","",$slot_id);
    	$slot_id=0;
    	$sms_slot_name=$sms_slot;
    }
    else
    {
    
    	$select="select sms_slot,phone_number,sms_slot_name,sms_slot_order from sms_slot_file where slot_id='$slot_id' limit 1";
    	$result = $conn->query($select);
    	$row = $result->fetch_assoc();
    	$sms_slot=$row['sms_slot'];
    	$phone_number=$row['phone_number'];
    	$sms_slot_name=$row['sms_slot_name'];
    	$order=$row['sms_slot_order'];
    	echo "<input type='hidden' id='slot_id' name='slot_id' value='$slot_id'>";
    }
    
}
?>

<table style='width:400px' class='form_css'>
    <tr>
        <th style='text-align:left'><h2>SMS Slot</h2></th>
    </tr>
    <?php
    echo "<tr><th style='text-align:left'>SMS Slot</th><td>".$sms_slot_name."</td></tr>";
    echo "<input type='hidden' id='sms_slot_name' name='sms_slot_name' value='$sms_slot_name'>";
    echo "<input type='hidden' id='sms_slot_order' name='sms_slot_order' value='$order'>";
    echo textMaker('SMS Slot Name','sms_slot',$sms_slot);
    echo textMaker('Phone Number','phone_number',$phone_number);
    echo "<tr>";
        echo "<td colspan=2 style='text-align:center'>";
            

		if($slot_id==0)
            echo "<input type='button'  onclick='submit_btn_slot()'  name='submit_btn' value='Submit' style='margin:15px'>";
            else
            echo "<input type='submit' name='update_btn' value='Update' style='margin:15px'>";
            
            echo "<input type='button' onclick='cancel_btn()' value='Cancel' style='margin:15px'>";
        echo "</td>";
    echo "</tr>";
	//echo "<input type='hidden' name='status'>";
    ?>
</table>

</form>
<script>
function submit_btn_slot()
{
	if($('#sms_slot').val()=='' ||$('#sms_slot').val()=='smsc')
	alert("Please Enter SMS Slot")
	else if($('#phone_number').val()=='')
	alert("Please enter a phone number")
	else
	{
			$('#status').val("Submit")
	 document.form1.submit();
	}
}
function cancel_btn()
{
 	document.getElementById('form1').action = 'sms_slot_list.php'
    document.form1.submit();
}

</script>
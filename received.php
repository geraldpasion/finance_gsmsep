<?php
include 'page_header.php';
?>
<script>
function sent_message(a,smsc_id,trans_no)
{
	$('#row').val(a)
 	url="xstatus=send_message&message="+$('#message'+a).val()+"&phone_number="+$('#phone_number'+a).val()+"&smsc_id="+smsc_id+"&trans_no="+trans_no
 	loadXMLDoc('get_type.php?'+url,reloadPage)
}
function reloadPage(result)
{
	alert("Message sent")
	$('#message'+$('#row').val()).val('')
	document.form2.submit();
}
</script>
<input type='hidden' id='row' value=''>
<input type='hidden' id='sms_id' value=''>
<form method=post id='form2' name='form2'>
<?php
$select="select phone_number, min(received_date) as received_date, message,smsc_id,trans_no from received_file group by message,trans_no,smsc_id order by received_date desc";
$result = $conn->query($select);
echo "<table border=1 style='border-collapse:collapse'>";
echo "<tr>";
	echo "<th>Phone Number</th>";
	echo "<th>Message Received</th>";
	echo "<th>Received Date</th>";
echo "</tr>";
$a=0;
while($row=$result->fetch_assoc())
{
	echo "<tr>";
		echo "<td style='padding:10px;text-align:left'>".$row['phone_number']."</td>";
		echo "<td style='width:350px;padding:10px;text-align:left'>".$row['message']."</td>";
		echo "<td style='padding:10px;text-align:left'>".$row['received_date']."</td>";
	
	echo "</tr>";
	$select="select * from sms_files where received='".$row['phone_number']."' and trans_no='".$row['trans_no']."' order by date_sent";
	$result2 = $conn->query($select);
	while($row2=$result2->fetch_assoc())
	{
		echo "<tr>";	
			echo "<th>Message Sent</th>";
			echo "<td style='padding:10px'>".$row2['sms']."</td>";
			echo "<td style='padding:10px'>".$row2['date_sent']."</td>";
		echo "</tr>";
	}
	echo "<tr>";
		echo "<td colspan=3 style='padding:10px;'>";
		echo "<textarea style='width:700px'id='message".$a."'></textarea>";
		echo "</td>";
	echo "</tr>";
	echo "<tr>";
		echo "<td colspan=3><input type='button' value='Send' onclick='sent_message(".$a.",\"".$row['smsc_id']."\",\"".$row['trans_no']."\")'></td>";
	echo "</tr>";
	echo "<input type='hidden' id='phone_number".$a."' value='".$row['phone_number']."'>";
	$a++;
}
echo "</table>";
?>

</form>
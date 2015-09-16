<?php
include 'page_header.php';
?>
<link rel="stylesheet" type="text/css" href="src/datepickr.min.css">
<script src="src/datepickr.min.js"></script>
<script>
function print_me()
{
			document.getElementById('form1').target = '_blank'
 			document.getElementById('form1').action = 'list_approved_fpdf.php'
            document.form1.submit();
}
</script>
<style>
     .calendar-icon {
                display: inline-block;
                vertical-align: middle;
                width: 19px;
                height: 19px;
                background: url(assets/calendar.jpg);
            }
        .table_class td
        {font-size:13px;}
        .table_class th	
        {font-size:13px;}
</style>
<form method=post name='form1' id='form1'>
	<table >
			<tr>
			<th>List of Approved</th>
		</tr>

	<?php
	//	$status_type=getPost('status','Choose');
    $requestor_id=getPost('requestor_id','Choose');
    $date_from=getPost('date_from','') ;
    $date_to=getPost('date_to','') ;
    $company_name=getPost('company_name','Choose');
    $supplier_id=getPost('supplier','Choose');
    $secretary_id=getPost('secretary_id','Choose');
    
    $filter=" where approved_date>1 ";
        if($date_from!='' ||$date_to!='')
{
    
    //  $filter.=" date_created between '".date("Y-m",strtotime($date_from))."' and '".date("Y-m-d",strtotime($date_to))."'";
         
    $filter.=" and ";
     if($date_from!='' && $date_to!='')
            $filter.=" approved_date >= '".date("Y-m-d",strtotime($date_from))." 00:00:00' and approved_date <='".date("Y-m-d",strtotime($date_to))." 23:59:59'";
     else if($date_from!='')
           $filter.=" approved_date like '".date("Y-m-d",strtotime($date_from))."%' ";
     else
           $filter.=" approved_date like '".date("Y-m-d",strtotime($date_to))."%' ";
}
    $filter=whereMaker($filter,'requestor',$requestor_id);
    $filter=whereMaker($filter,'company_name',$company_name);
    $filter=whereMaker($filter,'supplier',$supplier_id);
    $filter=whereMaker($filter,'secretary',$secretary_id);
    
     $SELECT_po="select * from po_file".$filter;
    
    echo "<tr>
    		<th style='border:none;text-align:left'>Date Approved</th>
        	<th colspan=10 style='text-align:left; border:none'>
     			<table align=left>
     				<tr>
     					<td style='border:none'>
     						<input title='parseMe' style='width:120px' id='date_from' name='date_from' value='$date_from'>
     						<span id='date_from_cal' class='calendar-icon'></span>
     					</td>
     					<td style='padding:1px;border:none'>-</td><td style='border:none'>
     						<input title='parseMe' style='width:120px' id='date_to' name='date_to' value='$date_to'>
     						<span id='date_to_cal' class='calendar-icon'></span>
     					</td>
     			</table>
     		</td>
     	</tr>";
    
    $select="select concat(first_name,' ',last_name) as name,account_id from master_address_file where mas_status=1 and account_type='Account Executive' order by name";
    $result1 = $conn->query($select);
    while($row1=$result1->fetch_assoc())
    $requestor[$row1['account_id']]=$row1['name'];
    
   echo  selectMakerEach('Requestor','requestor_id',$requestor,'' , $requestor_id);
   
    $select="select concat(first_name,' ',last_name) as name,account_id from master_address_file where mas_status=1 and account_type='secretary' order by name";
    $result1 = $conn->query($select);
    while($row1=$result1->fetch_assoc())
    $secretary[$row1['account_id']]=$row1['name'];
    
    $select="select concat(first_name,' ',last_name) as name,account_id from master_address_file where mas_status=1 and account_type='engineer' order by name";
    $result1 = $conn->query($select);
    while($row1=$result1->fetch_assoc())
    $engineer[$row1['account_id']]=$row1['name'];
    
   echo  selectMakerEach('Secretary','secretary_id',$secretary,'' , $secretary_id);
   
    $select="select company_name from po_file where mas_status=1 and company_name!='' group by company_name order by company_name";
    $result1 = $conn->query($select);
    while($row1=$result1->fetch_assoc())
    $company[$row1['company_name']]=$row1['company_name'];
    
   echo  selectMakerEach('Company Name','company_name',$company,'' , $company_name);
   
   
   
    $select="select supplier from po_file where mas_status=1 and supplier!='' group by supplier order by supplier";
    $result1 = $conn->query($select);
    while($row1=$result1->fetch_assoc())
    $supplier[$row1['supplier']]=$row1['supplier'];
    
   echo  selectMakerEach('Supplier','supplier',$supplier,'' , $supplier_id);
   
   echo "<tr ><td colspan=2 style='padding:10px;text-align:center'>
   	<input type='submit' value='Search'>
   	<input type='button' style='margin:left:20px' onclick='print_me()' value='Print'>
   
   </td></tr>";
   //print_r($_POST);
  // echo $SELECT_po;
   	$result = $conn->query($SELECT_po);
	$rowcount=mysqli_num_rows($result);
	
	echo "<tr>
			<td colspan=4  >
			<div  style='display:block;width:1000px;overflow-x:auto'>
				<table class='table_class' border=1 style='border-collapse:collapse'>
					<thead style='display:block'>
				";
	$width=array(0=>127
	,1=>46,
	2=>100,
	3=>110,
	4=>90,
	5=>100,
	6=>80,
	7=>80,
	8=>120
	,9=>80
	,10=>90
	,11=>100
	,12=>150
	
	);
	/*,13=>160
	,14=>160
	,15=>160
	,16=>160
	,17=>160
	,18=>160*/
	$total=1;
	for($a=0;$a<count($width);$a++)
	$total+=$width[$a]+4;
	echo "<tr>";
		echo "<th style='width:".$width[0]."px;text-align:center'>Date</td>";
		echo "<th style='width:".$width[1]."px;text-align:center'>Letter</td>";
		echo "<th style='width:".$width[2]."px;text-align:center'>Mode of Payment</td>";
		echo "<th style='width:".$width[3]."px;text-align:center'>Company Name</td>";
		echo "<th style='width:".$width[4]."px;text-align:center'>Engineer</td>";
		echo "<th style='width:".$width[5]."px;text-align:center'>Secretary</td>";
		echo "<th style='width:".$width[6]."px;text-align:center'>PO#</td>";
		echo "<th style='width:".$width[7]."px;text-align:center'>JO#</td>";
		echo "<th style='width:".$width[8]."px;text-align:center'>Item Description</td>";
		echo "<th style='width:".$width[9]."px;text-align:center'>Page#</td>";
		echo "<th style='width:".$width[10]."px;text-align:center'>Pay to</td>";
		echo "<th style='width:".$width[11]."px;text-align:center'>Total amount</td>";
		echo "<th style='width:".$width[12]."px;text-align:center'>Particulars</td>";
	/*	echo "<th style='width:".$width[13]."px;text-align:center'>RM /ANY Time of Text</td>";
		echo "<th style='width:".$width[14]."px;text-align:center'>Time Replied to RM / ANY</td>";
		echo "<th style='width:".$width[15]."px;text-align:center'>Time CR text</td>";
		echo "<th style='width:".$width[16]."px;text-align:center'>Time Reply to CR</td>";
		echo "<th style='width:".$width[17]."px;text-align:center'>Time forward to Boss</td>";
		echo "<th style='width:".$width[18]."px;text-align:center'>Time Approved by Boss</td>";*/
 	echo "</tr>";
			echo "</thead>";
		echo "<tbody style='display:block;overflow-y:auto;width:".$total."px;	height:500px'>";

	while($row=$result->fetch_assoc())
	{
		if(empty($engineer[$row['engineer']]))
		$engineer[$row['engineer']]="";	
		if(empty($secretary[$row['secretary']]))
		$secretary[$row['secretary']]="";
		echo "<tr>";
			echo "<td style='width:".$width[0]."px;text-align:center'>".date("F j, Y",strtotime($row['date_created']))."</td>";
		echo "<td style='width:".$width[1]."px;text-align:center'>".$row['letter_code']."</td>";
		echo "<td style='width:".$width[2]."px;text-align:center'>".$row['payment_type']."</td>";
		echo "<td style='width:".$width[3]."px;text-align:center'>".$row['company_name']."</td>";
		echo "<td style='width:".$width[4]."px;text-align:center'>".$engineer[$row['engineer']]."</td>";
		echo "<td style='width:".$width[5]."px;text-align:center'>".$secretary[$row['secretary']]."</td>";
		echo "<td style='width:".$width[6]."px;text-align:center'>".$row['po']."</td>";
		echo "<td style='width:".$width[7]."px;text-align:center'>".$row['jo']."</td>";
		echo "<td style='width:".$width[8]."px;text-align:center'>".$row['item_description']."</td>";
		echo "<td style='width:".$width[9]."px;text-align:center'>".$row['page']."</td>";
		echo "<td style='width:".$width[10]."px;text-align:center'>".$row['supplier']."</td>";
		echo "<td style='width:".$width[11]."px;text-align:center'>".$row['total_amount']."</td>";
		
		
		
		echo "<td style='width:".$width[12]."px;text-align:center'>";
		$SELECT="select * from po_item_file where trans_no='".$row['trans_no']."'";
		$result1 = $conn->query($SELECT);
		while($row1=$result1->fetch_assoc())
		{
			echo $row1['item']." ".$row1['description']." ".$row1['quantity']." ".$row1['unit_price']."<br>";
		}
		echo "</td>";
		/*echo "<td style='width:".$width[13]."px;text-align:center'>".convert_to_dateTime($row['date_created'])."</td>";
		echo "<td style='width:".$width[14]."px;text-align:center'>Time Replied to RM / ANY</td>";
		echo "<td style='width:".$width[15]."px;text-align:center'>".convert_to_dateTime($row['release_date'])."</td>";
		echo "<td style='width:".$width[16]."px;text-align:center'>Time Reply to CR</td>";
		echo "<td style='width:".$width[17]."px;text-align:center'>Time forward to Boss</td>";
		echo "<td style='width:".$width[18]."px;text-align:center'>".convert_to_dateTime($row['approved_date'])."</td>";*/
		echo "</tr>";
	}
		echo "</tbody>";

   ?>
   </table>
   </div>
   </td>
   </tr>
   </table>
</form>
<script>
       datepickr('#date_from_cal', { altInput: document.getElementById('date_from') });
     datepickr('#date_to_cal', { altInput: document.getElementById('date_to') });

</script>
<?php
include 'page_header.php';
?>
<link rel="stylesheet" type="text/css" href="src/datepickr.min.css">
<script src="src/datepickr.min.js"></script>
<style>
     .calendar-icon {
                display: inline-block;
                vertical-align: middle;
                width: 19px;
                height: 19px;
                background: url(assets/calendar.jpg);
            }
    .container
    {
        width: 970px;
    }
    .action_btn
    {
        background-color:blue;
        color:white;
        padding:25px;
        
    }
       .nav-tabs {
    border-bottom: 1px solid #ddd;
    }
    .nav {
        margin-bottom: 0;
        padding-left: 0;
        list-style: none;
    }
 
    .nav-tabs>li {
        float: left;
        margin-bottom: -1px;
    }
    .nav>li {
        position: relative;
        display: block;
    }
    .nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus .selected_tab {
        color: #555555;
        background-color: #fff;
        border: 1px solid #ddd;
        border-bottom-color: transparent;
        cursor: default;
        padding: 10px;
    }
    .tabby
    {
        padding:10px;
    }
    .nav-tabs>li>a {
        
        margin-right: 2px;
        line-height: 1.428571429;
        text-decoration:none;
        border: 1px solid transparent;
        border-radius: 4px 4px 0 0;
    }
</style>
<script>
    function getPage(page) {
         document.getElementById('page').value=page
       document.form1.submit();
    }
    function get_data(page_type,type,trans_num)
    {   
        notSubmit=true
        if(type=="View")         
        document.getElementById('form1').action = 'view_datas.php?trans_num='+trans_num+"&page_type="+page_type;
        else if (type=='Reject') {
            notSubmit=false
            test="confirm_btn(\""+page_type+"\","+trans_num+")"
            document.getElementById('reject_btn').innerHTML="<input type='button' value='Confirm' onclick='"+test+"'> <input type='button' value='Cancel'>";
            document.getElementById('reject_div').style.display="block"
        }
        else if (type=='Request Release') {
            notSubmit=false
            if (confirm("Are you sure you want to Approve this transaction?"))
            {
                // document.getElementById('form1').action = 'view_for_approve.php'
                url="xstatus=change_status&status=Request Release&trans_num="+trans_num
                loadXMLDoc('get_type.php?'+url,reloadPage)
                return false;
            }
        }
        else
        {
            if(page_type=="Without PO")
            page_type="withoutpo"
		else
page_type="withpo"
		   
            document.getElementById('form1').action = 'wo_po_form.php?type='+page_type+"&trans_num="+trans_num;
        }
        if (notSubmit) 
            document.form1.submit();
        return false;
    }
    function reloadPage(result) {
       
       document.form1.submit();
    }
    function reject_this(page_type,type,trans_num)
    {
        test="confirm_btn(\""+page_type+"\","+trans_num+",\""+type+"\")"
        document.getElementById('reject_btn').innerHTML="<input type='button' value='Confirm' onclick='"+test+"'> <input type='button' value='Cancel'>";
        document.getElementById('reject_div').style.display="block"
    }
    function confirm_btn(page_type,trans_num,status)
    {
        if (document.getElementById('reasons').value=='') {
            alert("Please enter a reason")
        }
        else
        {
            document.getElementById('form1').action = 'delete_transaction.php?trans_num='+trans_num+"&page_type="+page_type+"&status="+status
            document.form1.submit();
        }
    }
</script>
<form name='form1' id='form1' method=post>
<div id='reject_div' style='width:300px;display:none;position: fixed;top:15%;left:40%;border:1px solid black;background-color:white'>
    <table>
        <tr>
            <th style='padding:10px'>Are you sure you want to reject this item? Please Enter reason for rejection</th>
        </tr>
        <tr>
            <td style='padding:10px;'>
                <textarea style='width:280px;height:60px' id='reasons' name='reason'></textarea>
            </td>
        </tr>
        <tr>
            <td style='padding:10px;text-align:center' id='reject_btn'>
            </td>
        </tr>
    </table>
</div>

<?php
$type="With PO";
if(!empty($_REQUEST['type']))
$type=$_REQUEST['type'];
if($type==1)
$type='Without Po'; 

$active_po="class='active selected_tab '";
$active_wpo="class='tabby'";
if($type=='Without Po')
{
    $active_wpo="class='active selected_tab '";
    $active_po="class='tabby'";
}
?>
<div>
    <table class='filter' align=left>
        <tr>
            <td colspan=2>
                <ul class='nav nav-tabs'>
                    <li <?php echo $active_po;?> role='presentation'><a href='view_data.php?type=With Po'>With PO</a></li>
                    <li <?php echo $active_wpo;?> role='presentation'><a href='view_data.php?type=Without Po'>Without PO</a></li>
                </ul>
            </td>
    </tr>
<?php echo "<input type='hidden' id='type' name='type' value='".$type."'>"; ?>
    <?php
    
    $status_type=getPost('status','Choose');
    $requestor_id=getPost('requestor_id','Choose');
    
    
    $company_name=getPost('company_name','Choose');
    
    $supplier_id=getPost('supplier','Choose');
    
    
    $date_from=getPost('date_from','') ;
    $date_to=getPost('date_to','') ;
    $company_name=getPost('company_name','Choose');
    $supplier_id=getPost('supplier','Choose');
    $secretary_id=getPost('secretary_id','Choose');
    //$status_array=array('Request Release','Ready for pick up','Receive Request','Receive Cash Request','Rejected');
    $status_array=array('pending','For Approval','Rejected');
    echo selectMakerValue('Status','status',$status_array,'',$status_array,$status_type);
    
        echo "<tr><th style='border:none;text-align:left'>Date Sent</th>
        <th colspan=10 style='text-align:left; border:none'>
     <table align=left><tr> <td style='border:none'>
     <input title='parseMe' style='width:120px' id='date_from' name='date_from' value='$date_from'>
     <span id='date_from_cal' class='calendar-icon'></span>
     
     </td><td style='padding:1px;border:none'>-</td><td style='border:none'>
     <input title='parseMe' style='width:120px' id='date_to' name='date_to' value='$date_to'>
     <span id='date_to_cal' class='calendar-icon'></span>
     
     </td></table></td></tr>";
    
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
   
   echo "<tr ><td colspan=2 style='padding:10px;text-align:center'><input type='submit' value='Search'></td></tr>";
    ?>
    <tr><td><?php echo "<h2 style='text-align:left;padding:0px' >RM $type</h2>";?></td></tr>
</table>
    <br>
</div>
<?php


$limit=10;
$start=0;
$page=1;
if(!empty($_POST['page']))
{
    $page=$_POST['page'];
    $start=(($_POST['page']-1)*$limit);
}
$filter=" where (status not in ('Request Release','Ready for pick up','Receive Request','Receive Cash Request') or mas_status=0)  ";
$filter=whereMaker($filter,'status',$status_type);
$filter=whereMaker($filter,'requestor',$requestor_id);
if($date_from!='' ||$date_to!='')
{
    
    //  $filter.=" date_created between '".date("Y-m",strtotime($date_from))."' and '".date("Y-m-d",strtotime($date_to))."'";
         
    $filter.=" and ";
     if($date_from!='' && $date_to!='')
            $filter.=" date_created >= '".date("Y-m-d",strtotime($date_from))." 00:00:00' and date_created <='".date("Y-m-d",strtotime($date_to))." 23:59:59'";
     else if($date_from!='')
           $filter.=" date_created like '".date("Y-m-d",strtotime($date_from))."%' ";
     else
           $filter.=" date_created like '".date("Y-m-d",strtotime($date_to))."%' ";
}


if(strtolower($type)=="with po")
{
    $select="select * from po_file $filter and  po!='---' ";
    $column=array('Letter Code','Date','Po#','Requestor','Company Name','Supplier','Engineer','Secretary','Payment Type','Total Amount','Created By','Status');
    $val=array('letter_code','date_created','po','requestor','company_name','supplier','engineer','secretary','payment_type','total_amount','created_by','status','trans_no','mas_status');
}
else
{
    $type="Without PO";
    $active_po="class='tabby'";
    $active_wpo="class='active selected_tab'";
    $select="select * from po_file $filter and  po='---' ";
    $column=array('Letter Code','Date','Requestor','Company Name','Supplier','Secretary','Payment Type','Total Amount','Created By','Status');
    $val=array('letter_code','date_created','requestor','company_name','supplier','secretary','payment_type','total_amount','created_by','status','trans_no','mas_status');
}
 //      echo $select;
$select2=str_replace("*","id",$select);
$result = $conn->query($select2);
$rowcount=mysqli_num_rows($result);
$data=array();
$result = $conn->query($select." order by id desc limit $start,$limit ");
//echo "<br>".$select." order by id desc limit ".$start.",".$limit."<br>";
//print_r($result);
$pages=$rowcount/$limit;
if((int)$pages<$pages)
    $pages++;
$pages=(int)$pages;
// $result = $conn->query($select);
$data=array();
while($row=$result->fetch_assoc())
{
    $items=array('');
    for($a=0;$a<count($val);$a++)
    {
        if($a==0 &&$val[$a]!='' )
        $items[$a]=$row[$val[$a]];    
        else if($a==1)
        $items[$a]=date("F d,Y",strtotime($row[$val[$a]]));
        else
        {
            if(empty($row[$val[$a]]))
            $row[$val[$a]]="";
            if($val[$a]=='requestor')
            {
                if(empty($requestor[$row[$val[$a]]]))
                {
                    $select="select concat(first_name,' ',last_name) as name from master_address_file where account_id='".$row[$val[$a]]."' limit 1";
                    $result1 = $conn->query($select);
                    $row1=$result1->fetch_assoc();
                    $requestor[$row[$val[$a]]]=$row1['name'];
                }
                $items[$a]=$requestor[$row[$val[$a]]];
            }
            else if($val[$a]=='engineer')
            {
                 $select2="select concat(first_name,' ',last_name) as name from master_address_file where
                account_type='Engineer' and mas_status=1 and account_id='".$row[$val[$a]]."' limit 1";
                 $result2 = $conn->query($select2);
                 $rows2=$result2->fetch_assoc();
                 $engineer_name=$rows2['name'];
                 
                 $items[$a]=$engineer_name;
            }
            else if($val[$a]=='secretary')
            {
                $select2="select concat(first_name,' ',last_name) as name from master_address_file where
                account_type='Secretary' and mas_status=1 and account_id='".$row[$val[$a]]."' limit 1";
                 $result2= $conn->query($select2);
                 $rows2=$result2->fetch_assoc();
                 $secretary_name=$rows2['name'];
                $items[$a]=$secretary_name;
            }
            else if($val[$a]=='total_amount')
             $items[$a]=number_format($row[$val[$a]],2);
            else
                $items[$a]=$row[$val[$a]];
            //   echo "<br>".$a."=(".$val[$a].") ".$items[$a];
        }
    }
    $status[]=$row['status'];
    $data[]=$items;
}
?>

<?php

?>

<table class='table_data' style='width:1050px'>
    <?php
        echo "<tr>";
    for($a=0;$a<count($column);$a++)
            echo "<th>".$column[$a]."</th>";
    echo "<th colspan=2>Action</th>";
        echo "</tr>";
        
        //print_r($access);
        
        
        for($a=0;$a<count($data);$a++)
        {
            echo "<tr>";
            echo "<td>".$data[$a][0]."</td>";
            echo "<td style='width:200px'>".$data[$a][1]."</td>";
            for($k=2;$k<count($data[$a])-3;$k++)
             {
                echo "<td>".$data[$a][$k]."</td>";
            }
            if($data[$a][$k+2]!=1)
            echo "<td>Rejected</td>";  
            else
            echo "<td>".$data[$a][$k]."</td>";
            $trans_num=$data[$a][$k+1];
          if(!empty($access['View']))
            echo "<td><input type='image' src='assets/view_details.png' name='image' width='20' height='20' onclick=\"get_data('".$type."','View','".$trans_num."')\"></td>";
            
            //echo "<br>".$_SESSION['uname']."==".$data[$a][$k-1]." && (".$data[$a][$k]."==pending'|| ".$data[$a][$k+2];
            if(!empty($access['Edit']))
            {
               if($_SESSION['uname']==$data[$a][$k-1] && ($data[$a][$k]=='pending'|| $data[$a][$k+2]!=1))
               echo "<td><input type='image' src='assets/Edit.png' name='image' width='20' height='20' onclick=\"get_data('".$type."','Edit','".$trans_num."')\"></td>";
            }  
            //echo "<td><input type='image' src='assets/cross.jpg' name='image' width='20' height='20' onclick=\"get_data('".$type."','Reject','".$data[$a][$k]."')\"></td>";
            if(!empty($access['Reject']))
            {
               if($data[$a][$k+2]==1)
               echo "<td><img  src='assets/cross.jpg' name='image' width='20' height='20' onclick=\"reject_this('".$type."','".$data[$a][$k]."','".$trans_num."');\"></td>";
            }
            
            $k++;
          //  print_r($access);
            echo "<br>";
            echo "<td>";
            if(!empty($access['For Approval']))
            {
               if($data[$a][$k-1]!='pending' &&$data[$a][$k-1]!='Received')
               echo "<img  src='assets/check.png' name='image' width='20' height='20' onclick=\"get_data('".$type."','Request Release','".$trans_num."');\">";
            }
            echo "</td>";
            
            //echo "<td><input type='image' src='assets/check.png' name='image' width='20' height='20' onclick=\"get_data('".$type."','Request Release','".$data[$a][$k]."');\"></td>";
        
            echo "</tr>";
        }
        
    ?>
<tr>
     <td colspan=20 style='text-align:center'>
            <table align=center > 
                <?php
                    if($page!=1)
                    echo "<td><input type='button' value='First' onclick='getPage(1)'></td>";
                    if($page>1)
                    echo "<td><input type='button' value='Prev' onclick='getPage(".($page-1).")'></td>";
                    if($page+1<=$pages)
                    echo "<td><input type='button' value='Next' onclick='getPage(".($page+1).")'></td>";
                    if($page!=$pages)
                    echo "<td><input type='button' value='Last' onclick='getPage(".($pages).")'></td>";
                ?>
                <td style='width:200px;border:none;padding: 0px' colspan=16>Page
                    <select style='font-size:24px' id='page' name='page' onchange='getPage(this.value)' >
                        <?php
                        for($a=0;$a<$pages;$a++)
                        {
                            if($a+1==$page)
                            echo "<option selected>".($a+1)."</option>";
                            else
                            echo "<option >".($a+1)."</option>";
                        }
                        ?>
                    </select>
                    of <?php echo $pages;?> 
                </td>
            </table>
        </td>
    </tr>   
</table>
</form>
<script>
       datepickr('#date_from_cal', { altInput: document.getElementById('date_from') });
     datepickr('#date_to_cal', { altInput: document.getElementById('date_to') });

</script>
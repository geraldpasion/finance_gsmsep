<?php
include 'page_header.php';
?>
<script>
function change_info(type)
{
     if (type=='Secretary' ||type=='Engineer') 
            document.getElementById('account_exe').style.display='block';
        else
            document.getElementById('account_exe').style.display='none';
     if (type=='Account Executive' ) 
            document.getElementById('dept_div').style.display='block';
        else
            document.getElementById('dept_div').style.display='none';
}
</script>
<?php
//$addType=$_REQUEST['add_type'];
//$title=get_title($addType);

echo "<form name=form1 id=form1 method=post>";
$trans_no="";
if(!empty($_POST['update_btn']))
{
     $account_id=$_REQUEST['trans_num'];
    $type=$_POST['account_type'];
    $first_name=$_POST['first_name'];
    $last_name=$_POST['last_name'];
    $department=$_POST['department'];
    $account_executive=$_POST['account_executive'];
    $phone_number=$_POST['phone_number'];
    $add_array=array('account_type','first_name','last_name','department_id','account_executive_id','phone_number','date_created');
    $value_array=array($type,$first_name,$last_name,$department,$account_executive,$phone_number,'now()');
 //   $result= updateMaker('po_item_file',array('item','description','quantity','unit_price'),array($item,$description,$quantity,$unit_price), "where id='$id' and trans_no='$trans_num' ");
               
    $result=updateMaker('master_address_file',$add_array,$value_array,"where account_id='$account_id'");
    echo "<script>alert('Successfully Update $type');
    document.getElementById('form1').action = 'list_view.php'
            document.form1.submit();
                                             
    </script>";
}
$type="";
    $first_name="";
    $last_name="";
    $department="";
    $account_executive="";
    $phone_number="";
    $account_id="";

if(!empty($_REQUEST['trans_num']))
{
     $account_id=$_REQUEST['trans_num'];
     
    $select="select * from master_address_file where account_id='$account_id' limit 1";
     $result = $conn->query($select);
     $row=$result->fetch_assoc();
    $type=$row['account_type'];
    $first_name=$row['first_name'];
    $last_name=$row['last_name'];
    $department=$row['department_id'];
    $account_executive=$row['account_executive_id'];
    $phone_number=$row['phone_number'];
    echo "<input type='hidden' name='trans_num' value='$account_id'>";
}

if(!empty($_POST['submit_btn']))
{
    $type=$_POST['account_type'];
    $id=getId('master_address_file','account_id');
    $first_name=$_POST['first_name'];
    $last_name=$_POST['last_name'];
    $department=$_POST['department'];
    $account_executive=$_POST['account_executive'];
    $phone_number=$_POST['phone_number'];
    $add_array=array('account_type',"account_id",'first_name','last_name','department_id','account_executive_id','phone_number','date_created');
    $value_array=array($type,$id,$first_name,$last_name,$department,$account_executive,$phone_number,'now()');
    
    
    $result=insertMaker('master_address_file',$add_array,$value_array);
    echo "<script>alert('Successfully Added New $type');
    document.getElementById('form1').action = 'list_view.php'
            document.form1.submit();
    
    </script>";
}
?>
<table style='width:500px' class='form_css'>
    <tr>
        <th colspan=2 style='text-align:left'><h2>Address Book</h2></th>
    </tr>
    <?php
    
    
    echo selectMaker('Account Type','account_type',array('Account Executive','Secretary','Engineer'),"change_info(this.value)",$type);

    echo textMaker('First Name','first_name',$first_name);
    echo textMaker('Last Name','last_name',$last_name);
    echo textMaker('Phone Number','phone_number',$phone_number);
    
        $finance_head=array();
        $select="select account_id , concat(first_name,' ',last_name) as account_executive from master_address_file
    where mas_status=1 and account_type='account executive' order by account_executive";
        $result = $conn->query($select);
        $finance_head=array();
        $finance_value=array();
        
        while($row=$result->fetch_assoc())
        {
            $finance_head[]=$row['account_executive'];
            $finance_value[]=$row['account_id'];
        }
        
        
        $display_account="display:none";
        $display_dep="display:none";
        
        if ($type=='Secretary' ||$type=='Engineer') 
            $display_account="display:block";
        
        if ($type=='Account Executive' ) 
             $display_dep="display:block";
        
        
        echo "<tr><td colspan=2><table id='account_exe' style='width:90%;".$display_account."'>";
        echo selectMakerValue('Account Executive','account_executive',$finance_head,'',$finance_value,$account_executive);
        echo "</table></td></tr>";
        $select="select department,department_id from master_department_file where mas_status=1 order by department";
        $result = $conn->query($select);
        $departments=array();
        while($row=$result->fetch_assoc())
            $departments[]=array($row['department'],$row['department_id']);
        echo "<tr><td colspan=2><table id='dept_div' style='width:90%;".$display_dep."'>";
         echo selectMakerArray('Department','department',$departments,$department);
          echo "</table></td></tr>";
    
    
    echo "<tr>";
        echo "<td colspan=2 style='text-align:center'>";
          if($account_id=='')
            echo "<input type='SUBMIT' name='submit_btn' value='Submit' style='margin:15px'>";
            else
            echo "<input type='Submit' name='update_btn' value='Update' style='margin:15px'>";
            
            echo "<input type='button' value='Cancel' style='margin:15px'>";
        echo "</td>";
    echo "</tr>";
    ?>
</form>
</table>
<?php
?>
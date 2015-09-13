<?php
include 'page_header.php';
echo "<form name=form1 id=form1 method=post>";
if(!empty($_POST['submit_btn']))
{
    $department=$_POST['department'];
    $result=insertMaker('master_department_file',array('department'),array($department));
       echo "<script>alert('Successfully Added New Department');
       
       document.getElementById('form1').action = 'department_list.php';
            document.form1.submit();
    </script>";
       
}
if(!empty($_POST['update_btn']))
{
    $department=$_POST['department'];
    $department_id=$_POST['department_id'];
    $result=updateMaker('master_department_file',array('department'),array($department)," where department_id='$department_id'");
   // echo $result;
   echo "<script>alert('Successfully Updated New Department');
        document.getElementById('form1').action = 'department_list.php';
            document.form1.submit();
    </script>";
}

$trans_num="";
$department="";
if(!empty($_REQUEST['trans_num']))
{
    $department_id=$_REQUEST['trans_num'];
    $select="select department from master_department_file where department_id='$department_id' limit 1";
    $result = $conn->query($select);
    $row = $result->fetch_assoc();
    $department=$row['department'];
    echo "<input type='hidden' id='department_id' name='department_id' value='$department_id'>";
}
?>

<table style='width:400px' class='form_css'>
    <tr>
        <th style='text-align:left'><h2>Department</h2></th>
    </tr>
    <?php
    echo textMaker('Department Name','department',$department);
    echo "<tr>";
        echo "<td colspan=2 style='text-align:center'>";
            if(empty($_REQUEST['trans_num']))
            echo "<input type='Submit' name='submit_btn' value='Submit' style='margin:15px'>";
            else
            echo "<input type='submit' name='update_btn' value='Update' style='margin:15px'>";
            
            echo "<input type='button' value='Cancel' style='margin:15px'>";
        echo "</td>";
    echo "</tr>";
    ?>
</table>

</form>
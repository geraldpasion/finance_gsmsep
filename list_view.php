<?php
include 'page_header.php';
?>
<script>
    function deactivate(trans_num)
    {
         document.getElementById('form1').action = 'list_view.php?status=deactivate&user_id='+trans_num;
            document.form1.submit();
    }
     function check_list(trans_num)
    {
         document.getElementById('form1').action = 'list_view.php?status=activate&user_id='+trans_num
            document.form1.submit();
    }
    function edit_list(trans_num)
    {
        document.getElementById('form1').action = "masters.php?trans_num="+trans_num
        document.form1.submit();
    }
</script>
<?php
if(!empty($_REQUEST['status']) )
{
    $status=1;
    if($_REQUEST['status']=="deactivate")
    $status=0;
    $user_id=$_REQUEST['user_id'];
    $update="update master_address_file set mas_status=$status where account_id='$user_id' limit 1";
    $conn->query($update);
}

echo "<table>";
    echo "<tr>";
        echo "<td style='text-align:right'><a href='masters.php?'>Add New</a>";
        echo "</td>";
    echo "</tr>";
    echo "<tr>";
    $val_array=array('account_type','first_name','last_name','department_id','account_executive_id','phone_number','date_created','mas_status');
    listMaker('master_address_file','first_name',$val_array,'Address Book'.' List');
    echo "</tr>";
echo "</table>";
?>
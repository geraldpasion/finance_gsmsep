<?php
include 'page_header.php';
?>
<script>
    function deactivate(trans_num)
    {
         document.getElementById('form1').action = 'user_list.php?status=deactivate&user_id='+trans_num
            document.form1.submit();
    }
    
    function edit_list(trans_num)
    {
         document.getElementById('form1').action = 'user_file.php?trans_num='+trans_num
            document.form1.submit();
    }
    function check_list(trans_num)
    {
         document.getElementById('form1').action = 'user_list.php?status=activate&user_id='+trans_num
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
    $update="update user_file set mas_status=$status where user_id='$user_id' limit 1";
    $conn->query($update);
}
?>
<form method=post name='form1' id='form1'>
<?php

echo "<table>";
    echo "<tr>";
        echo "<td style='text-align:right'><a href='user_file.php'>Add New</a>";
        echo "</td>";
    echo "</tr>";
    echo "<tr>";
listMaker('user_file','created_date',array('user_name','first_name','last_name','user_type','department','finance_head','mas_status'),'User List');
    echo "</tr>";
echo "</table>";
?>
</form>
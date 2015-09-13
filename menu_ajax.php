<?php
include 'connect.php';
if($_REQUEST['xstatus']=='getMenuType')
{
    $type=$_REQUEST['type'];
    $select="select a.menu_id,k.type from user_access_file as a left join user_access_type_file as k
    on a.user_type=k.user_type and a.menu_id=k.menu_id where a.user_type='$type' ";
     $result = $conn->query($select);
     $menu_id="";
    while($row=$result->fetch_assoc())
    {
        if($menu_id!=$row['menu_id'])
        {
            $menu_id=$row['menu_id'];
            echo "!".$menu_id;
        }
        echo "~".$row['type'];
    }
    
}
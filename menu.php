<?php
    $select="select menu_head,menu_name,menu_type,menu_php from
    ((select menu_head,menu_name,menu_order,menu_type,menu_php from menu_file as a inner join user_access_file as k
    on a.menu_id=k.menu_id
    where a.mas_status=1 and user_type='".$_SESSION['user_type']."'
    )union all
    (select menu_head,menu_name,menu_order,menu_type,menu_php from menu_file where menu_head in
    (select menu_head from menu_file as a inner join user_access_file as k on a.menu_id=k.menu_id
    where a.mas_status=1 and user_type='".$_SESSION['user_type']."' group by menu_head) and menu_type=1 )) as a
    order by menu_head,menu_type,menu_order
    ";
    $result = $conn->query($select);
    $temp_head="-1";
    while($row=$result->fetch_assoc())
    {
        if($row['menu_type']==1)
        {
            if($temp_head!=$row['menu_head'] &&$temp_head!=-1)
            echo "</ul></li>";
            echo "<li style='width:100px;text-align:center' class='current-menu-item'>";
            echo "<a href=''>".$row['menu_name']."</a><ul>";
            $temp_head=$row['menu_head'];
        }
        else
            echo "<li style='width:150px;text-align:left'><a href='".$row['menu_php']."'>".$row['menu_name']."</a> </li>";
    }
    echo "</ul></li>";
?>
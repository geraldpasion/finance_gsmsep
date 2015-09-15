<?php
include 'page_header.php';

$select="select * from sms_files where hide!=1 order by date_sent desc ";
$result = $conn->query($select);
echo "<table>";
    echo "<tr>";
        echo "<td>";
        echo "</td>";
        echo "<td>";
            echo "<table>";
            while($row=$result->fetch_assoc())
            {
                echo "<tr>";
                    echo "<td style='border:1px solid black'><input type='radio' onclick=''></td>";
                    echo "<td>".$row['sms']."</td>";
                echo "</tr>";
                echo "<tr>";
                    echo "<td colspan=2>".$row['date_sent']."</td>";
                echo "</tr>";
            }
            echo "</table>";
        echo "</td>";
    echo "</tr>";
echo "</table>";
?>
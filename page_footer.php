</div><?php
$y=date("Y",time());
echo "<table style='width:100%' align=center>";
	echo "<tr>";
		echo "<td style='text-align:center;padding:10px;height:12px;font-size:10px;'>  Copyright ";
if($y==2016)
	echo "".$y;
	else
	echo "2016-".$y;
	echo "</td>";
	echo "</tr>";
	echo "</table>";
	

?>
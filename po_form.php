<?php
include 'page_header.php';

if(empty($_SESSION['uname']))
{
    echo "<script>window.location.assign('login.php')</script>";
}
?>
<script>
        function addMore() {
            document.getElementById('item_no').value
            item_no=parseInt(document.getElementById('item_no').value)+1;
            html=document.getElementById('table_items').innerHTML
            add="<tr><td><input type='text' id='description"+item_no+"' name='description"+item_no+"' placeholder='description'></td>";
            add+="<td><input type='text' id='quantity"+item_no+"' name='quantity"+item_no+"' placeholder='quantity'></td></tr>";
           document.getElementById('item_no').value=item_no
           document.getElementById('table_items').innerHTML=html+add
        }
    </script>
<?php
if(!empty($_POST['submit_me']))
{
    $select="select trans_no from rm_po_file order by trans_no desc limit 1";
     $result = $conn->query($select);
     $trans_no=1;
     
     if ($result->num_rows > 0)
     {
        $row = $result->fetch_assoc();
        $trans_no=$row['trans_no']+1;
     }
    $requestor=$_POST['requestor'];
    $company_name=$_POST['company_name'];
    $secretary=$_POST['secretary'];
    $engineer=$_POST['engineer'];
    $supplier=$_POST['supplier'];
    $payment_type=$_POST['payment_type'];
    $jo_no=$_POST['jo_no'];
    $page_no=$_POST['page_no'];
    $total_amount=$_POST['total_amount'];
    $status="submited";
    if($_POST['submit_me']=="Save")
    $status="pending";
    
    $insert="insert into rm_po_file(
    `trans_no`, `requestor`, `company_name`, `secretary`, `engineer`, `supplier`, `payment_type`, `jo_no`, `page_no`, `total_amount`,
    `date_created`,`status`)
        values('".addslashes($trans_no)."', '".addslashes($requestor)."', '".addslashes($company_name)."', '".addslashes($secretary)."',
    '".addslashes($engineer)."', '".addslashes($supplier)."', '".addslashes($payment_type)."', '".addslashes($jo_no)."', '".addslashes($page_no)."',
    '".addslashes($total_amount)."', now(),'$status')";
     $result = $conn->query($insert);           
    
    $item_no=$_POST['item_no'];
    for($a=0;$a<$item_no;$a++)
    {
        $description=$_POST['description'.$a];
        $quantity=$_POST['quantity'.$a];
        $insert="insert into rm_po_item_file(`trans_no`,`description`,`quantity`) values('$trans_no','".addslashes($description)."','$quantity')";
         $result = $conn->query($insert);
         
    }
    echo "<script>alert('Successfull Transaction')</script>";
}
?>
<form name='form1' id='form1' method=post>

<h2>With Po</h2><TABLE>
    <tr>
        <th>Requestor</th><td><input type='text' name='requestor' id='requestor'></td>
    </tr>
    <tr>
        <th>Company Name</th><td><input type='text' name='company_name' id='company_name'></td>
    <tr>
        <th>Secretary</th><td><input type='text' name='secretary' id='secretary'></td>
    </tr>
    <tr>
        <th>Engineer</th><td><input type='text' name='engineer' id='engineer'></td>
    </tr>
    <tr>
        <th>Supplier</th><td><input type='text' name='supplier' id='supplier'></td>
    </tr>
    <tr>
        <th>Payment Type</th><td>
            <select name='payment_type' id='payment_type'>
                <option>Check</option>
                <option>Cash</option>
            </select>
        </td>
    </tr>
    <tr>
        <th>Jo No</th><td><input type='text' name='jo_no' id='jo_no'></td>
    </tr>
    <tr>
        <th>Page No</th><td><input type='text' name='page_no' id='page_no'></td>
    </tr>
    <tr>
        <th>Total Amount</th><td><input type='text' name='total_amount' id='total_amount'></td>
    </tr>
    <tr>
        <th>Items</th>
    </tr>
    <tr>
        <td><input type='button' value='add items' style='color:blue;background-color:transparent;border:none' onclick='addMore()'></td>
        <input type='Hidden' name='item_no' id='item_no' value=0>
    </tr>
    <tr>
            <td colspan=2>
                <table>
                    <tbody id='table_items'>
                        
                    </tbody>
                </table>
            </td>
        </tr>
    <tr>
        <td>
            <input type='submit' name='cancel' value='Cancel'>
            <input type='submit' name='submit_me' value='Submit'>
            <input type='submit' name='submit_me' value='Save'>
        </td>
    </tr>
</TABLE>

</form>
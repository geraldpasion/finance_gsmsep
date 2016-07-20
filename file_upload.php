<?php
include 'connect.php';
include 'functions.php';
//error_reporting(0);
$trans_num=$_REQUEST['trans_num'];
$type=$_REQUEST['type'];

$target_dir = "uploads/";
$file_name=basename($_FILES["fileToUpload"]["name"]);
$target_file = $target_dir . basename($_FILES["fileToUpload"]["tmp_name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_REQUEST['type'])) {
    /*$check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);


//  $check = getimagesize($_FILES["test"]["tmp_name"]);
    if($check !== false) {
        $update="update po_file set received_date=now(), status='Received' , file_name='".addslashes($file_name)."' where trans_no='$trans_num'";
        $conn->query($update);
        echo "<script>alert('Successfully Uploaded Image')</script>";
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "<script>alert( 'File is not an image.')</script>";
        $uploadOk = 0;
    }
    */
    try {
    
    // Undefined | Multiple Files | $_FILES Corruption Attack
    // If this request falls under any of them, treat it invalid.
    if (
        !isset($_FILES['fileToUpload']['error']) ||
        is_array($_FILES['fileToUpload']['error'])
    ) {
        throw new RuntimeException('Invalid parameters.');
    }

    // Check $_FILES['upfile']['error'] value.
    switch ($_FILES['fileToUpload']['error']) {
        case UPLOAD_ERR_OK:
            break;
        case UPLOAD_ERR_NO_FILE:
            throw new RuntimeException('No file sent.');
        case UPLOAD_ERR_INI_SIZE:
        case UPLOAD_ERR_FORM_SIZE:
            throw new RuntimeException('Exceeded filesize limit.');
        default:
            throw new RuntimeException('Unknown errors.');
    }

    // You should also check filesize here. 
    if ($_FILES['fileToUpload']['size'] > 1000000) {
        throw new RuntimeException('Exceeded filesize limit.');
    }

    // DO NOT TRUST $_FILES['upfile']['mime'] VALUE !!
    // Check MIME Type by yourself.
    $finfo = new finfo(FILEINFO_MIME_TYPE);
    if (false === $ext = array_search(
        $finfo->file($_FILES['fileToUpload']['tmp_name']),
        array(
            'jpg' => 'image/jpeg',
            'png' => 'image/png',
            'gif' => 'image/gif',
        ),
        true
    )) {
        throw new RuntimeException('Invalid file format.');
    }

$file_name=sprintf('%s.%s',
            sha1_file($_FILES['fileToUpload']['tmp_name']),
            $ext);
          //  echo
    // You should name it uniquely.
    // DO NOT USE $_FILES['upfile']['name'] WITHOUT ANY VALIDATION !!
    // On this example, obtain safe unique name from its binary data.
    if (!move_uploaded_file(
        $_FILES['fileToUpload']['tmp_name'],
        sprintf('uploads/%s.%s',
            sha1_file($_FILES['fileToUpload']['tmp_name']),
            $ext
        )
        
        
    )) {
        throw new RuntimeException('Failed to move uploaded file.');
    }
    
    
   // $file_name=$_FILES['fileToUpload']['tmp_name'];
	 $update="update po_file set received_date=now(), status='Received' , file_name='".addslashes($file_name)."' where trans_no='$trans_num'";
        $conn->query($update);
        echo $update;
    echo "<script>alert('File is uploaded successfully.')</script>";

} catch (RuntimeException $e) {

    echo $e->getMessage();

}
}






echo "<form id='form1' name='form1' method=post>";
echo "<input type='hidden' id='type' name='type' value='$type'>";
echo "</form>";

?>
<script>
    function back() {
        
    document.getElementById('form1').action = "view_data_combine.php";
    document.form1.submit();
    }
    
</script>
<?php
$select="select requestor,letter_code,date_created from po_file where trans_no='$trans_num' limit 1";
$result = $conn->query($select);
$row=$result->fetch_assoc();
$date=$row['date_created'];
$requestor=$row['requestor'];
$letter_code=$row['letter_code'];
$select="select phone_number,smsc_id from master_address_file where account_id='$requestor'  and account_type='Account Executive' limit 1";
$result = $conn->query($select);
$row=$result->fetch_assoc();
$smsc_id=$row['smsc_id'];
$phone_number=$row['phone_number'];
$text="Letter Code:".$letter_code."
";
$text.="Date:".date("F d, Y h:m:i a",strtotime($date))."
Received ";
$text=urlencode($text);

try {
//$response = file_get_contents("http://127.0.0.1:13013/cgi-bin/sendsms?user=sms-app&pass=app125&text=$text&to=".$phone_number);
sendText($text,$phone_number,$smsc_id,$trans_num);
}
catch(Exception $e)
{
		echo "<script>alert('Failed to send message')</script>";
}
catch (ErrorException $e) {
    // ...
}
               
?>
<body onload='back()'></body>
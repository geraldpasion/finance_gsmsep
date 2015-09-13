<?php
include 'page_header.php';

if(empty($_SESSION['uname']))
{
    echo "<script>window.location.assign('login.php')</script>";
}
?>
</form>

<?php 
session_start();
if(!$_SESSION['user'])
{ header("location: trangchu.php");}

    $id = $_GET['ID'];
    $hoTen = $_POST['hoTen'];
    $diaChi = $_POST['diaChi'];
    $IDPB = $_POST['IDPB'];


    if($IDNV == "" || $hoTen == "" || $diaChi == "")
    {
      header('location: capnhat.php');
    }
    else
    {
        $link = mysqli_connect("localhost", "root", "") or die ("couldn't connect");
        mysqli_select_db($link, "dulieu");
        $sql = "update nhanvien set hoTen='$hoTen', diaChi='$diaChi', IDPB='$IDPB' where IDNV='$id'"; 

        $result = mysqli_query($link, $sql);
        header('location: capnhat.php');
    }
    
?>
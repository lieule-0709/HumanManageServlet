<?php 

  session_start();
  if(!$_SESSION['user'])
  { header("location: trangchu.php");}


    $IDNV = $_POST['ID'];
    $hoTen = $_POST['hoTen'];
    $diaChi =$_POST['diaChi'];
    $IDPB =$_POST['IDPB'];

    if($IDNV == "" || $hoTen == "" || $diaChi == ""){
      header('location: chennhanvien.php');
    }
    else {
    $link = mysqli_connect("localhost", "root", '') or die("khong lien ket duoc csdl");
    mysqli_select_db($link, "dulieu");
    
    $sql = 'select * from nhanvien where IDNV=\''.$IDNV.'\'';
    $result = mysqli_query($link, $sql);
    
    if(!mysqli_num_rows($result)) {
      $sql = 'Insert into nhanvien values(\''.$IDNV.'\', \''.$hoTen.'\', \''.$diaChi.'\',\''.$IDPB.'\')';
      mysqli_query($link, $sql);
      header('location: xemthongtinnhanvien.php');
    }
    else {
      header('location: chennhanvien.php');
    }
    }
?>
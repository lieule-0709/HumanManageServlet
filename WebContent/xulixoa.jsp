<?php 

$link = mysqli_connect("localhost", "root", "") or die("khong lien ket duoc csdl");
mysqli_select_db($link, "dulieu");

$case = $_GET['case'];

if($case == 'xoaMot'){
    $IDNV = $_GET['IDNV'];
    if($IDNV != null){
        $sql = "delete from nhanvien where IDNV='$IDNV'" ;
        mysqli_query($link, $sql);
    }
}

else{
    $ARR = $_POST['delArr'];
    if( $ARR != null){
        foreach( $ARR as $row){
            $sql = "delete from nhanvien where IDNV='$row'" ;
            mysqli_query($link, $sql);
        }
    }
}

header("location: xoa.php");


mysqli_close($link);
//  header("location: xemthongtinnhanvien.php");
?>
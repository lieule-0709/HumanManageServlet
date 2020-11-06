<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style_table.css">
</head>
<body>

<form id="formxoa" action="xulixoa.php?case=xoaNhieu"  method="post" align="right"></form>
<?php 

session_start();
if(!$_SESSION['user'])
{ header("location: trangchu.php");}


$link = mysqli_connect("localhost", "root", "") or die("khong lien ket duoc csdl");
mysqli_select_db($link, "dulieu");
$sql = 'select * from nhanvien';
$result = mysqli_query($link, $sql);
echo '<table id="table"> <tr> <th> IDNV </th> <th> Họ tên </th> <th> Địa chỉ </th> <th> Phòng ban </th> <th> Xóa </th>
 <th> xóa nhiều </th> </tr>';
 
while($row = mysqli_fetch_assoc($result)){
    echo '<tr> 
            <td>'. $row['IDNV'] .'</td> 
            <td> '.$row['hoTen'].' </td> 
            <td> '.$row['diaChi'] .'</td> 
            <td> '.$row['IDPB'] .'</td> 
            <td> <a href="xulixoa.php?case=xoaMot&IDNV='.$row['IDNV'].'"> xóa </a></td>
            <td> <input form="formxoa" type="checkbox" name="delArr[]" value="'.$row['IDNV'].'"></td>
        </tr>';
}
echo '</table>';
echo '<input type="submit" form="formxoa" value=" Xóa " style="position: absolute; right: 0; top:0; padding: 5px; margin: 15px 25px 0px 15px">';
mysqli_free_result($result);
mysqli_close($link);
?>

</body>
</html>

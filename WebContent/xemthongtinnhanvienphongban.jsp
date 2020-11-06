<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>nhan vien phong ban</title>
<link href="style_table.css" rel="stylesheet" type="text/css">
</head>

<body>

    <?php

    $href =  $_REQUEST['IDPB'];

    $link = mysqli_connect("localhost", "root", '') or die("khong lien ket duoc csdl");
    mysqli_select_db($link, "dulieu");

    $sql = 'select * from nhanvien where IDPB='.'\''.$href.'\'';
    $result = mysqli_query($link, $sql);

    echo "<table id='table'> 
        <tr> <th> IDNV </th> <th> Há» TÃªn </th> <th> Äá»a chá» </th> <th> IDPB </th> </tr>";

    while( $row = mysqli_fetch_array($result)){
        echo '<tr> <td>'. $row['IDNV'] .'</td> <td> '.$row['hoTen'].' </td> <td> '.$row['diaChi'] .'</td> <td> '.$row['IDPB'] .'</td> </tr>';
    }
    echo "</table>";

    mysqli_free_result($result);
    mysqli_close($link);

    ?>

</body>
</html>
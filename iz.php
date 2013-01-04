<?php

echo "blagoj";

 $m=$_POST['message'];
$str="hello";
$filename="access_db/1.txt";
$fp=fopen($filename, 'a+');

echo $str;
fwrite($fp,"$str \n");


fclose($fp);
?>

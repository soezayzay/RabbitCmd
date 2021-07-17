<?php include "main_link.php" ?>
<?php 
$c1 = $argv[1];
$c2 = $argv[2];
$c3 = $argv[3];
$c4 = $argv[4];
$c5 = $argv[5];
$c6 = $argv[6];
$c7 = $argv[7];
$c8 = $argv[8];
$c9 = $argv[9];
$file = fopen('/data/data/com.termux/files/usr/etc/profile',"a");
fwrite($file,"\n");
fwrite($file,'alias '.$s1."="."'".$c1.' '.$c2.' '.$c3.' '.$c4.' '.$c5.' '.$c6.' '.$c7.' '.$c8.' '.$c9."'");
$file.close();
?>

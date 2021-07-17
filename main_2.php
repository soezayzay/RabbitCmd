<?php
$s1=$argv[1];
$file=fopen("main_link.php","w");
fwrite($file,"<?php");
fwrite($file,"\n");
fwrite($file,'$s1 ='."'".$s1."';");
fwrite($file,"\n");
fwrite($file,"?>");
?>
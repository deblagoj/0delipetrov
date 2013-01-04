<?
if (!empty($_POST)) {
include ("en-message.php");
}
/* subject */
$Subject = "posetitel";

/* To send HTML mail, you can set the Content-type header. */
$headers = "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=utf-8\r\n";

/* additional headers */
$headers .= "From: ". $_POST['name'] ." ". $_POST['company'] ." <".$_POST['fromMail'].">\r\n";

/* and now mail it */


$DoKoj .= "ilinka@delipetrov.mk";

mail($DoKoj, $Subject, $Message, $headers);

header("Location: ./en-kontakt1.html");
?>

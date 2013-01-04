<?
foreach ($_POST as $Var=>$Value) {
$$Var = $Value;
}
$Komentar = nl2br($message);
$Message =<<< EOF



From: $name <br>
E-mail: $fromMail <br>
Comment: <br>
$Komentar
EOF;

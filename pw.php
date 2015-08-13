<?php
function SecurePasswordGenerator($length = 9, $add_dashes = false, $available_sets = 'luds')
{
	$sets = array();
	if(strpos($available_sets, 'l') !== false)
		$sets[] = 'abcdefghjkmnpqrstuvwxyz';
	if(strpos($available_sets, 'u') !== false)
		$sets[] = 'ABCDEFGHJKMNPQRSTUVWXYZ';
	if(strpos($available_sets, 'd') !== false)
		$sets[] = '23456789';
	if(strpos($available_sets, 's') !== false)
		$sets[] = '!@#$%&*?';

	$all = '';
	$password = '';
	foreach($sets as $set)
	{
		$password .= $set[array_rand(str_split($set))];
		$all .= $set;
	}

	$all = str_split($all);
	for($i = 0; $i < $length - count($sets); $i++)
		$password .= $all[array_rand($all)];

	$password = str_shuffle($password);

	if(!$add_dashes)
		return $password;

	$dash_len = floor(sqrt($length));
	$dash_str = '';
	while(strlen($password) > $dash_len)
	{
		$dash_str .= substr($password, 0, $dash_len) . '-';
		$password = substr($password, $dash_len);
	}
	$dash_str .= $password;
	return $dash_str;
}
?>

<html>

<head>

<title>Secure Password Generator - privacytools.io</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" href="favicon.ico" type="image/ico">
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div style="margin:30px 0 0 30px;width:600px;"	
<h1><a href="https://www.privacytools.io/"><img src="img/layout/logo.png" class="img-responsive" alt="privacytools.io"></a></h1>	
<h1>Secure Password Generator <a href="https://www.privacytools.io/pw.php" style="margin-left:25px;" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-lock"></span> Generate</a></h1>

<p style="margin:20px 0 20px 0;">
	<div class="alert alert-success" role="alert">
<strong>The available characters in each set are user friendly - there are no ambiguous characters
such as i, l, 1, o, 0, etc. Every time this page is displayed, our secure server generates a unique set of custom, high quality, cryptographic-strength password strings which are safe for you to use:</strong>
</div>

</p>

<?php
//Without special characters
$pw64 = SecurePasswordGenerator(64,false,lud);
$pw32 = SecurePasswordGenerator(32,false,lud);
$pw24 = SecurePasswordGenerator(24,false,lud);
$pw16 = SecurePasswordGenerator(16,false,lud);
$pw8 = SecurePasswordGenerator(8,false,lud);

//With special characters
$pws64 = SecurePasswordGenerator(64,false,luds);
$pws32 = SecurePasswordGenerator(32,false,luds);
$pws24 = SecurePasswordGenerator(24,false,luds);
$pws16 = SecurePasswordGenerator(16,false,luds);
$pws8 = SecurePasswordGenerator(8,false,luds);
?>

<p>
<strong>64 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pw64?>" style="width:600px;">
</p>

<p>
<strong>32 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pw32?>" style="width:600px;">
</p>

<p>
<strong>24 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pw24?>" style="width:600px;">
</p>

<p>
<strong>16 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pw16?>" style="width:600px;">
</p>

<p>
<strong>8 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pw8?>" style="width:600px;">
</p>

<p><a href="https://www.privacytools.io/pw.php" style="margin:20px 0 20px 0;" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-lock"></span> Generate a new set of passwords</a></p>


<h2>Passwords with special characters</h2>

<p>
<strong>64 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pws64?>" style="width:600px;">
</p>

<p>
<strong>32 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pws32?>" style="width:600px;">
</p>

<p>
<strong>24 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pws24?>" style="width:600px;">
</p>

<p>
<strong>16 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pws16?>" style="width:600px;">
</p>

<p>
<strong>8 characters:</strong></br>
<input type="text" onclick="this.focus();this.select()" value="<?=$pws8?>" style="width:600px;">
</p>

<p><a href="https://www.privacytools.io/pw.php" style="margin:20px 0 20px 0;" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-lock"></span> Generate a new set of passwords</a></p>

<br/>
<br/>

<p>
	Open Source Code: <a href="" target="_blank"></a>
</p>

</div>

<!-- Start Piwik -->
<script type="text/javascript">
  var _paq = _paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//www.privacytools.io/stats/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', 1]);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript><p><img src="//www.privacytools.io/stats/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
<!-- End Piwik Code -->

</body>
</html>
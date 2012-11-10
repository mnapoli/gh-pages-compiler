<?php

if (! isset($_POST['payload'])) {
	die ("no parameter 'payload'");
}
$payload = $_POST['payload'];
if (!$parameters = json_decode($payload, true)) {
	die("bad json");
}

$repositoryUrl = $parameters['repository']['url'];

$script = realpath(dirname(__FILE__) . "/../bin/gh-pages-compiler.sh");

$output = array();
$repositoryUrl = escapeshellarg($repositoryUrl);
exec("$script $repositoryUrl", $output, $return);

if ($return !== 0) {
	echo "Error while executing the command:" . PHP_EOL;
	echo implode(PHP_EOL, $output);
}

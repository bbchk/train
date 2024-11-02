<?php

$country = 'Ukraine';
echo "This is the best country: $country\n";
echo "This is the best country: {$country}\n";
echo "This is the best country:" . $country . "\n";


$arr = array("id" => 4, "calelo");

echo $arr[0];
echo count($arr);

echo strlen($country);

$it = 0;

while ($it != 10) {
  $it++;
  echo "$it\n";
};

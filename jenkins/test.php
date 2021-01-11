<?php
/**
 * Created by PhpStorm.
 * User: 朱俊亚
 * Date: 2019/1/3
 * Time: 18:45
 */

$a = 'A';
$b = 'a';
for($i = 0; $i<= 25; $i++) {
	for ($n = 0; $n < 25; $n++) {
		echo $a . $b++ . "\r\n";
	}
	echo $a++ . "\r\n";
	echo "\r\n";
}

<?php

/**
 * Gets the alphanumeric tokens in the given string.
 * 
 * @param $string the string to search for an alphanumeric token.
 * @return the first alphanumeric token in the given string, or null if
 *         none were found.
 */
function getAlphanumeric($string) {
    $pattern = "/[A-Za-z]*\\d+[A-Za-z]*/";
    $matches = null;
    if (0 == preg_match($pattern, $string, $matches))
        return null;
    else
        return array_shift(array_values($matches));
}

$string = 'Math building g501.';
$result = getAlphanumeric($string);
Print $result;
?>

<?php

function distance($a, $b)
{
    $dnaStrand1 = str_split($a);
    $dnaStrand2 = str_split($b);

    if (count($dnaStrand1) !== count($dnaStrand2)) {
        throw new InvalidArgumentException('DNA strands must be of equal length.');
    }

    return count(array_diff_assoc(($dnaStrand1), ($dnaStrand2)));
}

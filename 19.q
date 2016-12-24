{
    0N!-3!y;
    res : y where 0 = mod[i:iasc y;2];
    $[count[res] > 1; 
        .z.s[(1 + x) mod 2;$[1 = count[y] mod 2; 1 _ res; res]];
        res]
} [x:0;y:1 + til 3017957]

// a much better solution
{1+2*0b sv @[r;(r:0b vs x)?1b;:;0b]} 3017957

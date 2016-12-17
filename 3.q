ispossible:{ x:asc[x]; x[2] < sum x[0 1] };
sum ispossible each tris:flip ("III";5 5 5) 0:`:/tmp/2016d3.txt 

permutations:{y@/:
        {
            $[x=1;y;raze .z.s[x-1;y]{x,/:y except x}\:y]
            }[x;til count y]
    };    / [3; `a`b`c`d`e]

permutations[3; `a`b`c`d`e]
combinations[3; `a`b`c`d`e]


combinations:{y@/:{
            $[x=1;y;distinct asc each raze .z.s[x-1;y]{x,/:y except x}\:y]
            }[x;til count y]
    };    / [3; `a`b`c`d`e]


sum ispossible each combinations[3;flip[tris]0]

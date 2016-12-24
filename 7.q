x:(
"abba";
"xyza";
"abccbd";
"bccbdc";
"bbbccbaa";
"bcbccba";
"xxxx");

isAbba:{
    any {[x;i]
        (x[i - 2 1] ~ c) & (<>) . c:x[i + 1 0]
      }[x] each
    raze value g@'where each 1 =/: deltas each g:group x
    };

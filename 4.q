rooms:read0 `:/tmp/2016d4.txt 

checksums:-1_/:-6#/:rooms
sectorids:"I"$3#/:-10#/:rooms
codes:-10_/:rooms except\:"-"

desc count each group "aaaaa-bbb-z-y-x" except "-"

actual:{5#raze value asc each group desc count each group x} each codes

sum sectorids where actual ~' checksums

{5#raze value asc each group desc count each group x except "-"} each 
("aaaaa-bbb-z-y-x";"a-b-c-d-e-f-g-h";"not-a-real-room";"totally-real-room")

decrypt:{`char$97 + mod[y + -97 + `int$x;26]}

([] a:decrypt ' [codes;sectorids];sectorids)

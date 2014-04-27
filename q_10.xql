xquery version "3.0";

let $file := fn:doc("/db/assignment3/dancingCompetitions_14.xml")
let $pair := $file/dancingCompetitions/Pairs/Pair[@pair_id="p9669"]
let $she := $file/dancingCompetitions/Dancers/she_dancers/Dancer[@dancer_id=$pair/she/@ref_she_dancer]
let $he := $file/dancingCompetitions/Dancers/he_dancers/Dancer[@dancer_id=$pair/he/@ref_he_dancer]

return
    <Pair pair_id="p9669">
    <she_dancer>
        {$she/Name}
        {$she/Surname}
        {$she/Address}
    </she_dancer>
    <he_dancer>
        {$he/Name}
        {$he/Surname}
        {$he/Address}
    </he_dancer>
    </Pair>
    

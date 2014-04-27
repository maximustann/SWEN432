xquery version "3.0";

let $file := fn:doc("/db/assignment3/dancingCompetitions_14.xml")


let $pairs := (
    <Pair>
        {
        for $pair in $file/dancingCompetitions/Competition/Dance/dancePair
            return $pair
        }
    </Pair>
)
let $part_pairs := distinct-values($pairs/dancePair/@ref_pair)


let $part_list := (
for $pair in $file/dancingCompetitions/Pairs/Pair
    for $part_pair in $part_pairs
        return if ($pair/@pair_id = $part_pair)
            then $pair
            else ()
)

let $he_list := (
    <he_list>{
    for $he in $part_list
        return $he/he
    }
    </he_list>
)

let $she_list := (
    <she_list>{
    for $she in $part_list
        return $she/she
    }
    </she_list>
)

let $he := distinct-values($he_list/he/@ref_he_dancer)
let $she := distinct-values($she_list/she/@ref_she_dancer)

return <NumberOfParticipants>
        <NumberOfSheParticipants>{xs:string(count($she))}</NumberOfSheParticipants>
        <NumberOfSheParticipants>{xs:string(count($he))}</NumberOfSheParticipants>
</NumberOfParticipants>

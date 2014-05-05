xquery version "3.0";

let $file := fn:doc("/db/assignment3/dancingCompetitions_14.xml")
let $she_dancers := $file/dancingCompetitions/Dancers/she_dancers/Dancer

let $she_in_pairs := (
for $she in $she_dancers
    for $pair in $file/dancingCompetitions/Pairs/Pair
    where $pair/she/@ref_she_dancer = $she/@dancer_id
    return <pair she_id = "{$she/@dancer_id}" pair_id="{$pair/@pair_id}"/>
)

let $score_list := (
for $she in $she_in_pairs
    for $pair in $file/dancingCompetitions/Competition/Dance/dancePair
    where $pair/@ref_pair = $she/@pair_id
    return <she she_id="{$she/@she_id}" score = "{$pair[@ref_pair=$she/@pair_id]/@score}"/>
)
let $div := 2
let $she_id_list := distinct-values($score_list/@she_id)

let $she_list := (
for $she in $she_id_list
    let $she_total := sum($score_list[@she_id=$she]/@score) div $div
    return <she she_id="{$she}" score="{$she_total}"/>
)

























let $he_dancers := $file/dancingCompetitions/Dancers/he_dancers/Dancer

let $he_in_pairs := (
for $he in $he_dancers
    for $pair in $file/dancingCompetitions/Pairs/Pair
    where $pair/he/@ref_he_dancer = $he/@dancer_id
    return <pair he_id = "{$he/@dancer_id}" pair_id="{$pair/@pair_id}"/>
)

let $score_list := (
for $he in $he_in_pairs
    for $pair in $file/dancingCompetitions/Competition/Dance/dancePair
    where $pair/@ref_pair = $he/@pair_id
    return <he he_id="{$he/@he_id}" score = "{$pair[@ref_pair=$he/@pair_id]/@score}"/>
)
let $div := 2
let $he_id_list := distinct-values($score_list/@he_id)

let $he_list := (
for $he in $he_id_list
    let $he_total := sum($score_list[@he_id=$he]/@score) div $div
    return <he he_id="{$he}" score="{$he_total}"/>
)



let $max_he := max($he_list/@score)

let $top_he := (
for $he_max in $he_list
where $he_max/@score = $max_he
return $he_max)


let $max_she := max($she_list/@score)
let $top_she := (
for $she_max in $she_list
where $she_max/@score = $max_she
return $she_max)

return <BestDancers>
    <she_dancer dancer_id = "{$top_she/@she_id}" total_score = "{$top_she/@score}">
        {$file/dancingCompetitions/Dancers/she_dancers/Dancer[@dancer_id = $top_she/@she_id]/Name}
        {$file/dancingCompetitions/Dancers/she_dancers/Dancer[@dancer_id = $top_she/@she_id]/Surname}
    </she_dancer>
    <he_dancer dancer_id = "{$top_he/@he_id}" total_score = "{$top_he/@score}">
        {$file/dancingCompetitions/Dancers/he_dancers/Dancer[@dancer_id = $top_he/@he_id]/Name}
        {$file/dancingCompetitions/Dancers/he_dancers/Dancer[@dancer_id = $top_he/@he_id]/Surname}
    </he_dancer>
    </BestDancers>

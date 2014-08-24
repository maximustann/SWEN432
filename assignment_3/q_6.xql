xquery version "1.0";


let $file := fn:doc("/db/boxiong/dancingCompetitions_14.xml")

let $x := $file/dancingCompetitions/Competition[@place="Auckland"][@date="2008-06-10"]/Dance

let $pair := distinct-values($x/dancePair/@ref_pair)

let $she_id := 
(
	for $pair_id in $pair
		return distinct-values($file/dancingCompetitions/Pairs/Pair[@pair_id = $pair_id]/she/@ref_she_dancer)
)

let $she_id := distinct-values($she_id)

let $she :=
(
	for $id in $she_id
		order by $id
 		return <Dancer id="{$id}" name="{$file/dancingCompetitions/Dancers/she_dancers/Dancer[@dancer_id=$id]/Name}"/>
)

let $he_id := 
(
	for $pair_id in $pair
		return distinct-values($file/dancingCompetitions/Pairs/Pair[@pair_id = $pair_id]/he/@ref_he_dancer)
)
let $he_id := distinct-values($he_id)
let $he :=
(
	for $id in $he_id
		order by $id
 		return <Dancer id="{$id}" name="{$file/dancingCompetitions/Dancers/he_dancers/Dancer[@dancer_id=$id]/Name}"/>
)


return <Auckland_2008_Dancers>
            <she_dancers>
           {$she}
        </she_dancers>

        <he_dancers>
              {$he}
	</he_dancers>
</Auckland_2008_Dancers>



xquery version "1.0";


let $file := fn:doc("/db/boxiong/dancingCompetitions_14.xml")

let $x := $file/dancingCompetitions/Competition[@place="Auckland"]/Dance

let $pair := distinct-values($x/dancePair/@ref_pair)

return <Auckland_2008_Dancers>
            <she_dancers>
               {for $pair_id in $pair
                let $she_id := 
            (
                let $she := $file/dancingCompetitions/Pairs/Pair[@pair_id = $pair_id]/she/@ref_she_dancer
                return $she
            )
            let $she_name :=
            (
                let $she := $file/dancingCompetitions/Dancers/she_dancers/Dancer[@dancer_id=$she_id]/Name
                return $she
            )   
            return
                <Dancer id="{$she_id}" name="{$she_name}"/>}
        </she_dancers>

        <he_dancers>
               {for $pair_id in $pair
                let $he_id := 
                    (
                    let $he := $file/dancingCompetitions/Pairs/Pair[@pair_id = $pair_id]/he/@ref_he_dancer
                return $he
            )
            let $he_name :=
            (
                let $he := $file/dancingCompetitions/Dancers/he_dancers/Dancer[@dancer_id=$he_id]/Name
                return $he
            )   
            return
                <Dancer id="{$he_id}" name="{$he_name}"/>}
                </he_dancers> 
</Auckland_2008_Dancers>


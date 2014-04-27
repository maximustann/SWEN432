xquery version "3.0";
let $file := fn:doc("/db/assignment3/dancingCompetitions_14.xml")

let $wel := $file/dancingCompetitions/Competition[@place="Wellington"]
let $wel_2010 := $wel[substring(@date, 1, 4)="2010"]
let $dancePairs_info := (
    <dancePairs>{
        for $dancePair in $wel_2010/Dance/dancePair
        return $dancePair
    }
</dancePairs>
)

let $dancePairs_id := distinct-values($dancePairs_info/dancePair/@ref_pair)


let $score := (
    <score>{
        for $pair in $dancePairs_id
              for $pair_info in $dancePairs_info
                where $dancePairs_info/dancePair/@ref_pair = $pair
                    return <pair pair_id="{$pair}" score = "{xs:int(sum($dancePairs_info/dancePair[@ref_pair=$pair]/@score))}"/>
    }
</score>
)

let $max := max($score/pair/@score)

  for $winner in $score/pair
    where $winner/@score=$max
    return <Wellington_2010_Winner>
        <WinningPair pair_id="{$winner/@pair_id}" total_score="{$winner/@score}"/>
    </Wellington_2010_Winner>

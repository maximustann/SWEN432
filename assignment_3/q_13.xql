xquery version "1.0";

let $file := fn:doc("/db/boxiong/dancingCompetitions_14.xml")

let $part_pairs := (
	for $pair in $file/dancingCompetitions/Competition/Dance/dancePair
		return $pair
)

let $part_pairs := distinct-values($part_pairs/@ref_pair)

let $list :=
(
	for $pair in $part_pairs
		return 
			<Pair pair_id="{$pair}">
			{
			for $x in $file/dancingCompetitions/Competition/Dance/dancePair[@ref_pair=$pair]
			return <Score score="{$x/@score}"/>
			}
			</Pair>
)

let $each_pair_average :=
(
	for $pair in $list
		return <pair pair_id="{$pair/@pair_id}" avg_score="{avg($pair/Score/@score)}"/>
)


return
<OverallAverage>
 {avg($each_pair_average/@avg_score)}
</OverallAverage>

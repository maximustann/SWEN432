xquery version "1.0";

let $file := fn:doc("/db/boxiong/dancingCompetitions_14.xml")
let $pairs := $file/dancingCompetitions/Pairs/Pair

let $part_pairs := (
        for $pair in $file/dancingCompetitions/Competition/Dance/dancePair
            return $pair
    )


let $part_list := distinct-values($part_pairs/@ref_pair)

let $total_pair_list := (
        for $pair in $pairs
            return <dancePair pair_id="{$pair/@pair_id}"/>
    )

let $total_pair_list := distinct-values($total_pair_list/@pair_id)


let $result := 
for $pair at $i in $part_list
	let $set := index-of($total_pair_list[$i], $pair)
	return if(empty($set))
		then ()
		else $pair

return <NotCompeted>
{
	for $pair in $result
		return <Pair pair_id="{$pair}"/>
}
</NotCompeted>

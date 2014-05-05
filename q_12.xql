xquery version "1.0";



let $file := fn:doc("/db/boxiong/dancingCompetitions_14.xml")
let $pairs := $file/dancingCompetitions/Pairs/Pair

let $part_pairs := (
        for $pair in $file/dancingCompetitions/Competition/Dance/dancePair
            return $pair
    )
let $part_list := distinct-values($part_pairs/@ref_pair)

let $index := (
for $part_pair in $part_list
    for $pair in $pairs
    where $part_pair = $pair/@pair_id
    return $pair
)

let $total_pair_list := (
        for $pair in $pairs
            return <pair pair_id="{$pair/@pair_id}"/>
    )
let $del_list := (
for $pair in $part_list
    return index-of($total_pair_list/@pair_id, $pair)
)


let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[1]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[2]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[3]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[4]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[5]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[6]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[7]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[8]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[9]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[10]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[11]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[12]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[13]))
let $total_pair_list := remove($total_pair_list, index-of($total_pair_list/@pair_id, $part_list[14]))

return <NotCompeted> {
    for $x in $total_pair_list
        return <Pair pair_id="{$x/@pair_id}"/>
}
</NotCompeted>
(: 
for $pair in $index
    return if (contains($part_list, $pair))
    then index-of($part_list, $pair)
    else()
:)
(: return distinct-values($index):)

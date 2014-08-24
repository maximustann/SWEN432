let $file := fn:doc('/db/boxiong/Boat_Hire_A4_14.xml')

let $li :=
for $sailor in $file/Boat_Hire/Sailors/Sailor
	return if ($sailor/@ref_grade eq 'S')
	then <Sailor>{$sailor/@SailorId}</Sailor>
	else()


let $sa :=
for $id in $li
	return $id/@SailorId

let $lis :=
for $i in $sa
	let $num := count(
	for $res in $file/Boat_Hire/Marina/Boat/Reserves/Res_Sailor
		return if ($res/@SailorId=$i)
				then $res
				else ()
	)
	return <Sailor id="{$i}" no_of_reserves="{$num}"/>

let $result :=
max($lis/@no_of_reserves)

return <Most_Active_Sailors>
{
for $i in $lis
	return $i[@no_of_reserves = max($lis/@no_of_reserves)]
}
</Most_Active_Sailors>

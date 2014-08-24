let $file := fn:doc('/db/boxiong/Boat_Hire_A4_14.xml')

let $boat_list := 
for $boat in $file/Boat_Hire/Marina/Boat
	return $boat

let $boat_unused :=
for $boat in $boat_list
	return if (empty($boat/Reserves))
			then $boat
			else ()

let $b_list :=
for $b in $boat_unused
	return <Boat>{$b/@Number , $b/@name}</Boat>	

let $ma :=
	for $boat in $file/Boat_Hire/Marina/Boat
		return if (empty($boat/Reserves))
		then <Marina>{$boat/parent::Marina/@name}</Marina>
		else()
let $temp :=
for $x in $ma
	return $x/@name
let $marina := distinct-values($temp)

return <Unused_Boats>
{
	for $name in $marina
		return 
			<Marina name="{$name}">
			{
				for $boat in $b_list
					return $boat
			}
			</Marina>
}
	</Unused_Boats>

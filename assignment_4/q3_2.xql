let $file := fn:doc('/db/boxiong/Boat_Hire_A4_14.xml')

return <Skippers>
{
for $sailor in $file/Boat_Hire/Sailors/Sailor
	return if($sailor/@ref_grade eq 'S')
	then <Sailor SailorId="{$sailor/@SailorId}" name="{$sailor/Name}"/>
	else ()
}
</Skippers>

xquery version "3.0";


for $x in fn:doc("/db/assignment3/dancingCompetitions_14.xml")/dancingCompetitions/Competition[@place="Auckland"]
	let $name := $x[substring(@date, 1, 4) = "2008"]
	for $i in $name/Dance
		return <Dance name="{$i/@name}"/>

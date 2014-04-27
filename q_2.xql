xquery version "3.0";

for $x in fn:doc("/db/assignment3/dancingCompetitions_14.xml")/dancingCompetitions
	let $names := distinct-values($x/Competition/Dance/@name)
	for $name in $names
		    return <Dance name="{$name}"/>

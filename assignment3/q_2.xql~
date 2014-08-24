xquery version "1.0";

for $x in fn:doc("/db/boxiong/dancingCompetitions_14.xml")/dancingCompetitions
	let $names := distinct-values($x/Competition/Dance/@name)
	for $name in $names
			order by $name
		    return <Dance name="{$name}"/>

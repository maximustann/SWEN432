xquery version "3.0";

for $city in fn:doc("/db/assignment3/dancingCompetitions_14.xml")/dancingCompetitions
	let $names := distinct-values($city/Competition/@place)
	for $name in $names
		return <city name="{$name}"/>

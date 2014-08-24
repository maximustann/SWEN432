xquery version "1.0";

for $city in fn:doc("/db/boxiong/dancingCompetitions_14.xml")/dancingCompetitions
	let $names := distinct-values($city/Competition/@place)
	for $name in $names
		return <city name="{$name}"/>

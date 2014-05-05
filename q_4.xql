xquery version "1.0";


let $nu := count(fn:doc("/db/boxiong/dancingCompetitions_14.xml")/dancingCompetitions/Competition)
return <NumberOfCompetitions>{$nu}</NumberOfCompetitions>

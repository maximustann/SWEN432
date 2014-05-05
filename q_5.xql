xquery version "1.0";

for $x in fn:doc("/db/boxiong/dancingCompetitions_14.xml")/dancingCompetitions/Dancers
return 
    <LocalDancers>
    <she_dancer>
        <Name>
            {$x/she_dancers/Dancer[Address="Wellington"]/Name}  {$x/she_dancers/Dancer[Address="Upper Hutt"]/Name}  {$x/she_dancers/Dancer[Address="Lower Hutt"]/Name}
        </Name>
    </she_dancer>
    <he_dancer>
        <Name>
            {$x/he_dancers/Dancer[Address="Wellington"]/Name}  {$x/he_dancers/Dancer[Address="Upper Hutt"]/Name}  {$x/he_dancers/Dancer[Address="Lower Hutt"]/Name}
        </Name>
    </he_dancer>
    </LocalDancers>

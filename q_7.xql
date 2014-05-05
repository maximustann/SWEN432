xquery version "1.0";


let $file := fn:doc("/db/boxiong/dancingCompetitions_14.xml")

return 
    <NumberOfDancers>
    <NumberOfSheDancers>{count($file/dancingCompetitions/Dancers/she_dancers/Dancer)}</NumberOfSheDancers>
    <NumberOfHeDancers>{count($file/dancingCompetitions/Dancers/he_dancers/Dancer)}</NumberOfHeDancers>
    </NumberOfDancers>



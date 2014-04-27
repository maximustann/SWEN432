xquery version "3.0";

let $file := fn:doc("/db/assignment3/dancingCompetitions_14.xml")

let $dancePair := $file/dancingCompetitions/Competition/Dance/dancePair
return
    <OverallAverage>
    {avg($dancePair/@score)}
    </OverallAverage>


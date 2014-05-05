xquery version "1.0";

let $file := fn:doc("/db/boxiong/dancingCompetitions_14.xml")

let $dancePair := $file/dancingCompetitions/Competition/Dance/dancePair
return
    <OverallAverage>
    {avg($dancePair/@score)}
    </OverallAverage>


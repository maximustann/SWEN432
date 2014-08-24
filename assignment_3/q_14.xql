xquery version "1.0";

let $file := fn:doc("/db/boxiong/dancingCompetitionsUpdate_14.xml")

let $new_d_p := <dancePair ref_pair="p4994" score=""/>
let $new_she := <Dancer dancer_id="d0990">
                <Name>July</Name>
                <Surname>Andrews</Surname>
                <Address>Hollywood</Address>
                </Dancer>
                
let $new_he := <Dancer dancer_id="d4004">
                <Name>Fred</Name>
                <Surname>Aster</Surname>
                <Address>Hollywood</Address>
                </Dancer>

let $new_pair := <Pair pair_id="p4994">
                <he ref_he_dancer="d4004"/>
                <she ref_she_dancer="d0990"/>
                </Pair>

let $update1 := update insert $new_d_p preceding $file/dancingCompetitions/Competition/Dance[@name="Rumba"]/dancePair[@ref_pair="p9669"]
let $update2 := update insert $new_she preceding $file/dancingCompetitions/Dancers/she_dancers/Dancer[1]
let $update3 := update insert $new_he preceding $file/dancingCompetitions/Dancers/he_dancers/Dancer[1]
let $update4 := update insert $new_pair following $file/dancingCompetitions/Pairs/Pair
return 
    $file
    

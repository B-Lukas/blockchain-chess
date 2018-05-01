pragma solidity ^0.4.23;


contract Prototyp {
    
    uint counter = 0;                                                                    //muss nach jedem Spiel resettet werden

    uint[100][3] moves; 
    
    function addtoArray(uint fromX, uint fromY, uint toX, uint toY) public payable{      //Memory ist teuer, alle Züge auf einmal Speichern, ansonsten memory und dann zu Storage! + Confirmation Time?

        moves[counter][0]  = fromX;
        moves[counter][1]  = fromY;
        moves[counter][2]  = toX;
        moves[counter][3]  = toY;
        
        counter = counter + 1;

    }
    
    function getMove(uint x, uint y) public constant returns (uint)                      //Nur zum Testen, Werte in dem Array auslesen
    {
    	return moves[x][y];                                                              //x = Zug (startet bei 0)  y geht von 0-3 (fromX,FromY,toX,toY)
    }
    
    function restartGame() public{                                                       //Counter neustarten um das Array wieder von vorne zu befüllen. -> Ist es nötig das Array zu leeren(Kosten)? + Counter gibt die Anzahl der Züge für Replay etc an.
         counter = 0;  
         
    }

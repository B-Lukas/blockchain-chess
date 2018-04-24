pragma solidity ^0.4.0;

pragma solidity ^0.4.2;

contract Prototyp {

    /*      struct Move {     //   function addtoarray(Move a) noch nicht moeglich?
              uint fromX;
              uint fromY;
              uint toX;
              uint toY;
      }
      Move[]  moves = new Move[](8);

      */

    uint[] moves = new uint[](8);    // TODO: Arrays variabler laenge? nicht moeglich? matrizen nicht moeglich?


    function addtoarray(uint fromX, uint fromY, uint toX, uint toY) public payable {

        moves[1] = fromX;
        moves[2] = fromY;
        moves[3] = toX;
        moves[4] = toY;

    }
    //TODO: getMoves (Replay, Saves)
}


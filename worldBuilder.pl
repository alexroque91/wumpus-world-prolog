%Removes all objects from world
clearWorld :-
    retractall(w_Wall(_)),
    retractall(w_Gold(_)),
    retractall(w_Wumpus(_)),
    retractall(w_Pit(_)).

%Clears and builds 4x4 world
recreateWorld(N) :-
    clearWorld,
    build4x4Walls,
    buildWorld(N).

%Builds 4x4 outer walls to limit world
build4x4Walls :-
    asserta(w_Wall(r(0,0))),
    asserta(w_Wall(r(0,1))),
    asserta(w_Wall(r(0,2))),
    asserta(w_Wall(r(0,3))),
    asserta(w_Wall(r(0,4))),
    asserta(w_Wall(r(0,5))),
    asserta(w_Wall(r(1,5))),
    asserta(w_Wall(r(2,5))),
    asserta(w_Wall(r(3,5))),
    asserta(w_Wall(r(4,5))),
    asserta(w_Wall(r(5,5))),
    asserta(w_Wall(r(5,4))),
    asserta(w_Wall(r(5,3))),
    asserta(w_Wall(r(5,2))),
    asserta(w_Wall(r(5,1))),
    asserta(w_Wall(r(5,0))),
    asserta(w_Wall(r(4,0))),
    asserta(w_Wall(r(3,0))),
    asserta(w_Wall(r(2,0))),
    asserta(w_Wall(r(1,0))).

%The following are 2000 worlds generated using a simple MATLAB code.
% Wumpus and Gold are randomly placed in any space other than the
% initial hunter space. All rooms have a 20% chance of being a pit.
buildWorld(1) :-
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))).

buildWorld(2) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(3) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(4) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(5) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(6) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(7) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(8) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(9) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(10) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(11) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(12) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(13) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(14) :-
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(15) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(16) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(17) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(18) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(19) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(20) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(21) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(22) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(23) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(24) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(25) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(26) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(27) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(28) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(29) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(30) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(31) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(32) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(33) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(34) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(35) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(36) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(37) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(38) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(39) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(40) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(41) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(42) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(43) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(44) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(45) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(46) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(47) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(48) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(49) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(50) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(51) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(52) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(53) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(54) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(55) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(56) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(57) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(58) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(59) :-
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(60) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(61) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(62) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(63) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(64) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(65) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(66) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(67) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(68) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(69) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(70) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(71) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(72) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(73) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(74) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(75) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(76) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(77) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(78) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(79) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(80) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(81) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(82) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(83) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(84) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(85) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(86) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(87) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(88) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(89) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(90) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(91) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(92) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(93) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(94) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(95) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(96) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(97) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(98) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(99) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(100) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(101) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(102) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(103) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(104) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(105) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(106) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(107) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(108) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(109) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(110) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(111) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(112) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(113) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(114) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(115) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(116) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(117) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(118) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(119) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(120) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(121) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(122) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(123) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(124) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(125) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(126) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(127) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(128) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(129) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(130) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(131) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(132) :-
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(133) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(134) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(135) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(136) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(137) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(138) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(139) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(140) :-
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(141) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(142) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(143) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(144) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(145) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(146) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(147) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(148) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(149) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(150) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(151) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(152) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(153) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(154) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(155) :-
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(156) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(157) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(158) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(159) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(160) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(161) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(162) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(163) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(164) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(165) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(166) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(167) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(168) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(169) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(170) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(171) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(172) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(173) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(174) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(175) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(176) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(177) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(178) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(179) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(180) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(181) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(182) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(183) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(184) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(185) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(186) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(187) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(188) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(189) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(190) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(191) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(192) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(193) :-
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(194) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(195) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(196) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(197) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(198) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(199) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(200) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(201) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(202) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(203) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(204) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(205) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(206) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(207) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(208) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(209) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(210) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(211) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(212) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(213) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(214) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(215) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(216) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(217) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(218) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(219) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(220) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(221) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(222) :-
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(223) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(224) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(225) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(226) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(227) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(228) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(229) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(230) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(231) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(232) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(233) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(234) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(235) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(236) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(237) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(238) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(239) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(240) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(241) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(242) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(243) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(244) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(245) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(246) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(247) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(248) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(249) :-
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(250) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(251) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(252) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(253) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(254) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(255) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(256) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(257) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(258) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(259) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(260) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(261) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(262) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(263) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(264) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(265) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(266) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(267) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(268) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(269) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(270) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(271) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(272) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(273) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(274) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(275) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(276) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(277) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(278) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(279) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(280) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(281) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(282) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(283) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(284) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(285) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(286) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(287) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(288) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(289) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(290) :-
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(291) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(292) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(293) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(294) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(295) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(296) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(297) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(298) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(299) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(300) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(301) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(302) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(303) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(304) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(305) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(306) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(307) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(308) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(309) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(310) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(311) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(312) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(313) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(314) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(315) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(316) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(317) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(318) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(319) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(320) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(321) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(322) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(323) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(324) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(325) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(326) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(327) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(328) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(329) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(330) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(331) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(332) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(333) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(334) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(335) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(336) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(337) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(338) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(339) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(340) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(341) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(342) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(343) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(344) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(345) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(346) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(347) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(348) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(349) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(350) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(351) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(352) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(353) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(354) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(355) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(356) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(357) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(358) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(359) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(360) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(361) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(362) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(363) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(364) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(365) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(366) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(367) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(368) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(369) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(370) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(371) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(372) :-
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(373) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(374) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(375) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(376) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(377) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(378) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(379) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(380) :-
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(381) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(382) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(383) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(384) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(385) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(386) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(387) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(388) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(389) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(390) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(391) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(392) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(393) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(394) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(395) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(396) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(397) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(398) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(399) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(400) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(401) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(402) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(403) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(404) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(405) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(406) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(407) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(408) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(409) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(410) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(411) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(412) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(413) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(414) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(415) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(416) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(417) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(418) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(419) :-
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(420) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(421) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(422) :-
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(423) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(424) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(425) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(426) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(427) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(428) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(429) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(430) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(431) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(432) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(433) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(434) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(435) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(436) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(437) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(438) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(439) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(440) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(441) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(442) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(443) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(444) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(445) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(446) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(447) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(448) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(449) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(450) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(451) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(452) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(453) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(454) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(455) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(456) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(457) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(458) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(459) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(460) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(461) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(462) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(463) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(464) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(465) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(466) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(467) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(468) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(469) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(470) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(471) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(472) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(473) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(474) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(475) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(476) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(477) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(478) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(479) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(480) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(481) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(482) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(483) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(484) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(485) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(486) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(487) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(488) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(489) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(490) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(491) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(492) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(493) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(494) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(495) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(496) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(497) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(498) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(499) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(500) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(501) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(502) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(503) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(504) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(505) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(506) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(507) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(508) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(509) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(510) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(511) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(512) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(513) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(514) :-
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(515) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(516) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(517) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(518) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(519) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(520) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(521) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(522) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(523) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(524) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(525) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(526) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(527) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(528) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(529) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(530) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(531) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(532) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(533) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(534) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(535) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(536) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(537) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(538) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(539) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(540) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(541) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(542) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(543) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(544) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(545) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(546) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(547) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(548) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(549) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(550) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(551) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(552) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(553) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(554) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(555) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(556) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(557) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(558) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(559) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(560) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(561) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(562) :-
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(563) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(564) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(565) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(566) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(567) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(568) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(569) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(570) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(571) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(572) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(573) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(574) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(575) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(576) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(577) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(578) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(579) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(580) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(581) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(582) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(583) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(584) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(585) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(586) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(587) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(588) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(589) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(590) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(591) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(592) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(593) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(594) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(595) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(596) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(597) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(598) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(599) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(600) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(601) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(602) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(603) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(604) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(605) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(606) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(607) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(608) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(609) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(610) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(611) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(612) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(613) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(614) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(615) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(616) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(617) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(618) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(619) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(620) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(621) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(622) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(623) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(624) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(625) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(626) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(627) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(628) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(629) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(630) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(631) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(632) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(633) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(634) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(635) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(636) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(637) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(638) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(639) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(640) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(641) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(642) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(643) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(644) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(645) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(646) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(647) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(648) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(649) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(650) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(651) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(652) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(653) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(654) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(655) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(656) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(657) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(658) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(659) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(660) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(661) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(662) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(663) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(664) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(665) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(666) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(667) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(668) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(669) :-
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(670) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(671) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(672) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(673) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(674) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(675) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(676) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(677) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(678) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(679) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(680) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(681) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(682) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(683) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(684) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(685) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(686) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(687) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(688) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(689) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(690) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(691) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(692) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(693) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(694) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(695) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(696) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(697) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(698) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(699) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(700) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(701) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(702) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(703) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(704) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(705) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(706) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(707) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(708) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(709) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(710) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(711) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(712) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(713) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(714) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(715) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(716) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(717) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(718) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(719) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(720) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(721) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(722) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(723) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(724) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(725) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(726) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(727) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(728) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(729) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(730) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(731) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(732) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(733) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(734) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(735) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(736) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(737) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(738) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(739) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(740) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(741) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(742) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(743) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(744) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(745) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(746) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(747) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(748) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(749) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(750) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(751) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(752) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(753) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(754) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(755) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(756) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(757) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(758) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(759) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(760) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(761) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(762) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(763) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(764) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(765) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(766) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(767) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(768) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(769) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(770) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(771) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(772) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(773) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(774) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(775) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(776) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(777) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(778) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(779) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(780) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(781) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(782) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(783) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(784) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(785) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(786) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(787) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(788) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(789) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(790) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(791) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(792) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(793) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(794) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(795) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(796) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(797) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(798) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(799) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(800) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(801) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(802) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(803) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(804) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(805) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(806) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(807) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(808) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(809) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(810) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(811) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(812) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(813) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(814) :-
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(815) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(816) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(817) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(818) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(819) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(820) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(821) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(822) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(823) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(824) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(825) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(826) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(827) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(828) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(829) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(830) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(831) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(832) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(833) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(834) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(835) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(836) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(837) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(838) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(839) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(840) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(841) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(842) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(843) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(844) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(845) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(846) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(847) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(848) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(849) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(850) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(851) :-
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(852) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(853) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(854) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(855) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(856) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(857) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(858) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(859) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(860) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(861) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(862) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(863) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(864) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(865) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(866) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(867) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(868) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(869) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(870) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(871) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(872) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(873) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(874) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(875) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(876) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(877) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(878) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(879) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(880) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(881) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(882) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(883) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(884) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(885) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(886) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(887) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(888) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(889) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(890) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(891) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(892) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(893) :-
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(894) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(895) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(896) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(897) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(898) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(899) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(900) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(901) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(902) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(903) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(904) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(905) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(906) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(907) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(908) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(909) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(910) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(911) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(912) :-
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(913) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(914) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(915) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(916) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(917) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(918) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(919) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(920) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(921) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(922) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(923) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(924) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(925) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(926) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(927) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(928) :-
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(929) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(930) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(931) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(932) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(933) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(934) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(935) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(936) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(937) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(938) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(939) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(940) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(941) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(942) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(943) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(944) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(945) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(946) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(947) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(948) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(949) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(950) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(951) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(952) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(953) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(954) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(955) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(956) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(957) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(958) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(959) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(960) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(961) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(962) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(963) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(964) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(965) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(966) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(967) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(968) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(969) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(970) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(971) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(972) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(973) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(974) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(975) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(976) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(977) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(978) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(979) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(980) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(981) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(982) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(983) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(984) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(985) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(986) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(987) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(988) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(989) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(990) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(991) :-
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(992) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(993) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(994) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(995) :-
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(996) :-
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(997) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(998) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(999) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1000) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1001) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1002) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1003) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1004) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1005) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1006) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1007) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1008) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1009) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1010) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1011) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1012) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1013) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1014) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1015) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1016) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1017) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1018) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1019) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1020) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1021) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1022) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1023) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1024) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1025) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1026) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1027) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1028) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1029) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1030) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1031) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1032) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1033) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1034) :-
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1035) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1036) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1037) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1038) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1039) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1040) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1041) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1042) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1043) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1044) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1045) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1046) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1047) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1048) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1049) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1050) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1051) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1052) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1053) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1054) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1055) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1056) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1057) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1058) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1059) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1060) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1061) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1062) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1063) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1064) :-
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1065) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1066) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1067) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1068) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1069) :-
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1070) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1071) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1072) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1073) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1074) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1075) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1076) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1077) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1078) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1079) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1080) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1081) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1082) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1083) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1084) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1085) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1086) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1087) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1088) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1089) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1090) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1091) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1092) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1093) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1094) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1095) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1096) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1097) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1098) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1099) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1100) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1101) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1102) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1103) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1104) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1105) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1106) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1107) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1108) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1109) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1110) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1111) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1112) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1113) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1114) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1115) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1116) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1117) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1118) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1119) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1120) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1121) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1122) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1123) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1124) :-
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1125) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1126) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1127) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1128) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1129) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1130) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1131) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1132) :-
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1133) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1134) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1135) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1136) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1137) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1138) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1139) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1140) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1141) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1142) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1143) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1144) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1145) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1146) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1147) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1148) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1149) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1150) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1151) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1152) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1153) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1154) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1155) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1156) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1157) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1158) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1159) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1160) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1161) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1162) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1163) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1164) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1165) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1166) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1167) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1168) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1169) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1170) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1171) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1172) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1173) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1174) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1175) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1176) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1177) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1178) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1179) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1180) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1181) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1182) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1183) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1184) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1185) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1186) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1187) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1188) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1189) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1190) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1191) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1192) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1193) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1194) :-
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1195) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1196) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1197) :-
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1198) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1199) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1200) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1201) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1202) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1203) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1204) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1205) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1206) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1207) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1208) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1209) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1210) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1211) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1212) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1213) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1214) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1215) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1216) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1217) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1218) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1219) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1220) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1221) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1222) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1223) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1224) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1225) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1226) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1227) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1228) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1229) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1230) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1231) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1232) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1233) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1234) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1235) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1236) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1237) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1238) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1239) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1240) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1241) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1242) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1243) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1244) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1245) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1246) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1247) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1248) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1249) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1250) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1251) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1252) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1253) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1254) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1255) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1256) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1257) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1258) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1259) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1260) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1261) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1262) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1263) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1264) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1265) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1266) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1267) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1268) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1269) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1270) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1271) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1272) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1273) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1274) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1275) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1276) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1277) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1278) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1279) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1280) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1281) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1282) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1283) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1284) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1285) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1286) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1287) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1288) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1289) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1290) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1291) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1292) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1293) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1294) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1295) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1296) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1297) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1298) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1299) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1300) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1301) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1302) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1303) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1304) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1305) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1306) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1307) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1308) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1309) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1310) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1311) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1312) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1313) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1314) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1315) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1316) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1317) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1318) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1319) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1320) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1321) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1322) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1323) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1324) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1325) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1326) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1327) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1328) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1329) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1330) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1331) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1332) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1333) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1334) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1335) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1336) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1337) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1338) :-
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1339) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1340) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1341) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1342) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1343) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1344) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1345) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1346) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1347) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1348) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1349) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1350) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1351) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1352) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1353) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1354) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1355) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1356) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1357) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1358) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1359) :-
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1360) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1361) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1362) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1363) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1364) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1365) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1366) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1367) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1368) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1369) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1370) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1371) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1372) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1373) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1374) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1375) :-
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1376) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1377) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1378) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1379) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1380) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1381) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1382) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1383) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1384) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1385) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1386) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1387) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1388) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1389) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1390) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1391) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1392) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1393) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1394) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1395) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1396) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1397) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1398) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1399) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1400) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1401) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1402) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1403) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1404) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1405) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1406) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1407) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1408) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1409) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1410) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1411) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1412) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1413) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1414) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1415) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1416) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1417) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1418) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1419) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1420) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1421) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1422) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1423) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1424) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1425) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1426) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1427) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1428) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1429) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1430) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1431) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1432) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1433) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1434) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1435) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1436) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1437) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1438) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1439) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1440) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1441) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1442) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1443) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1444) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1445) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1446) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1447) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1448) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1449) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1450) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1451) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1452) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1453) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1454) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1455) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1456) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1457) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1458) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1459) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1460) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1461) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1462) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1463) :-
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1464) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1465) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1466) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1467) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1468) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1469) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1470) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1471) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1472) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1473) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1474) :-
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1475) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1476) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1477) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1478) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1479) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1480) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1481) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1482) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1483) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1484) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1485) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1486) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1487) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1488) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1489) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1490) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1491) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1492) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1493) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1494) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1495) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1496) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1497) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1498) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1499) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1500) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1501) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1502) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1503) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1504) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1505) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1506) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1507) :-
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1508) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1509) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1510) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1511) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1512) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1513) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1514) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1515) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1516) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1517) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1518) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1519) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1520) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1521) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1522) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1523) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1524) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1525) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1526) :-
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1527) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1528) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1529) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1530) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1531) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1532) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1533) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1534) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1535) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1536) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1537) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1538) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1539) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1540) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1541) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1542) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1543) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1544) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1545) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1546) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1547) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1548) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1549) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1550) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1551) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1552) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1553) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1554) :-
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1555) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1556) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1557) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1558) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1559) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1560) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1561) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1562) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1563) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1564) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1565) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1566) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1567) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1568) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1569) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1570) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1571) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1572) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1573) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1574) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1575) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1576) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1577) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1578) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1579) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1580) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1581) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1582) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1583) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1584) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1585) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1586) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1587) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1588) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1589) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1590) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1591) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1592) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1593) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1594) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1595) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1596) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1597) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1598) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1599) :-
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1600) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1601) :-
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1602) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1603) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1604) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1605) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1606) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1607) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1608) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1609) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1610) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1611) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1612) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1613) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1614) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1615) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1616) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1617) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1618) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1619) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1620) :-
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1621) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1622) :-
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1623) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1624) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1625) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1626) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1627) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1628) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1629) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1630) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1631) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1632) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1633) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1634) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1635) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1636) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1637) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1638) :-
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1639) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1640) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1641) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1642) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1643) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1644) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1645) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1646) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1647) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1648) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1649) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1650) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1651) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1652) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1653) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1654) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1655) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1656) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1657) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1658) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1659) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1660) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1661) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1662) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1663) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1664) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1665) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1666) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1667) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1668) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1669) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1670) :-
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1671) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1672) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1673) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1674) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1675) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1676) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1677) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1678) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1679) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1680) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1681) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1682) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1683) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1684) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1685) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1686) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1687) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1688) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1689) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1690) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1691) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1692) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1693) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1694) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1695) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1696) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1697) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1698) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1699) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1700) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1701) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1702) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1703) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1704) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1705) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1706) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1707) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1708) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1709) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1710) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1711) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1712) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1713) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1714) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1715) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1716) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1717) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1718) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1719) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1720) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1721) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1722) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1723) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1724) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1725) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1726) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1727) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1728) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1729) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1730) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1731) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1732) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1733) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1734) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1735) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1736) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1737) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1738) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1739) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1740) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1741) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1742) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1743) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1744) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1745) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1746) :-
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1747) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1748) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1749) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1750) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1751) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1752) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1753) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1754) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1755) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1756) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1757) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1758) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1759) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1760) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1761) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1762) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1763) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1764) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1765) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1766) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1767) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1768) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1769) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1770) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1771) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1772) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1773) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1774) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1775) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1776) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1777) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1778) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1779) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1780) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1781) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1782) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1783) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1784) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1785) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1786) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1787) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1788) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1789) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1790) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1791) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1792) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1793) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1794) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1795) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1796) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1797) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1798) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1799) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1800) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1801) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1802) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1803) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1804) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1805) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1806) :-
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1807) :-
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1808) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1809) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1810) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1811) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1812) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1813) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1814) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1815) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1816) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1817) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1818) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1819) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1820) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1821) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1822) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1823) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1824) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1825) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1826) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1827) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1828) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1829) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1830) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1831) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1832) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1833) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1834) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1835) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1836) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1837) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1838) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1839) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1840) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1841) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1842) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1843) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1844) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1845) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1846) :-
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1847) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1848) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1849) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1850) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1851) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1852) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1853) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1854) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1855) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1856) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1857) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1858) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1859) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1860) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1861) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1862) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1863) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1864) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1865) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1866) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1867) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1868) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1869) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1870) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1871) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1872) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1873) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1874) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1875) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1876) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1877) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1878) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1879) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1880) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1881) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1882) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1883) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1884) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1885) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1886) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1887) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1888) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1889) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1890) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1891) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1892) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1893) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1894) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1895) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1896) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1897) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1898) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1899) :-
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1900) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1901) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1902) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1903) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1904) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1905) :-
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1906) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1907) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1908) :-
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1909) :-
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1910) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1911) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1912) :-
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1913) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1914) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1915) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1916) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1917) :-
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1918) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1919) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1920) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1921) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1922) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1923) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1924) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1925) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1926) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1927) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1928) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1929) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1930) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1931) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1932) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1933) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1934) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1935) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1936) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1937) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1938) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1939) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1940) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1941) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1942) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1943) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1944) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1945) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1946) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1947) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1948) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1949) :-
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1950) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1951) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,1))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1952) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1953) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1954) :-
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1955) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1956) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1957) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1958) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1959) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1960) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1961) :-
    asserta(w_Gold(r(4,4))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1962) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1963) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1964) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1965) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1966) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1967) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,2))).

buildWorld(1968) :-
    asserta(w_Pit(r(3,4))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1969) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1970) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1971) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1972) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1973) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1974) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1975) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1976) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1977) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1978) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1979) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(3,1))).

buildWorld(1980) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(1,2))),
    asserta(w_Wumpus(r(4,1))).

buildWorld(1981) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1982) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1983) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,1))),
    asserta(w_Wumpus(r(1,3))).

buildWorld(1984) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1985) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1986) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,4))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1987) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1988) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Gold(r(2,4))),
    asserta(w_Wumpus(r(4,2))).

buildWorld(1989) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(4,4))).

buildWorld(1990) :-
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(1,3))),
    asserta(w_Wumpus(r(3,3))).

buildWorld(1991) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(3,3))),
    asserta(w_Wumpus(r(1,2))).

buildWorld(1992) :-
    asserta(w_Pit(r(1,2))),
    asserta(w_Pit(r(1,3))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,1))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(1993) :-
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(4,4))),
    asserta(w_Gold(r(1,4))),
    asserta(w_Wumpus(r(3,4))).

buildWorld(1994) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(3,2))),
    asserta(w_Pit(r(3,3))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(4,2))),
    asserta(w_Wumpus(r(2,1))).

buildWorld(1995) :-
    asserta(w_Pit(r(2,2))),
    asserta(w_Pit(r(2,3))),
    asserta(w_Gold(r(3,2))),
    asserta(w_Wumpus(r(4,3))).

buildWorld(1996) :-
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,3))),
    asserta(w_Wumpus(r(2,3))).

buildWorld(1997) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).

buildWorld(1998) :-
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(3,1))),
    asserta(w_Pit(r(4,3))),
    asserta(w_Gold(r(2,2))),
    asserta(w_Wumpus(r(2,4))).

buildWorld(1999) :-
    asserta(w_Pit(r(1,4))),
    asserta(w_Pit(r(2,1))),
    asserta(w_Pit(r(2,4))),
    asserta(w_Gold(r(4,3))),
    asserta(w_Wumpus(r(2,2))).

buildWorld(2000) :-
    asserta(w_Pit(r(2,4))),
    asserta(w_Pit(r(3,4))),
    asserta(w_Pit(r(4,2))),
    asserta(w_Gold(r(2,1))),
    asserta(w_Wumpus(r(1,4))).



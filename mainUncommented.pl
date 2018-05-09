/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   Wumpus World - by Alexander Csóka Roque
   Written in São Paulo, Brazil, April 2018

   Public domain code.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

:- abolish(w_Wall/1).
:- abolish(w_Wumpus/1).
:- abolish(w_Gold/1).
:- abolish(w_Pit/1).

:- dynamic([
  w_Wall/1,
  w_Wumpus/1,
  w_Gold/1,
  w_Pit/1
]).

%CONSTANTS
maxNumberOfMoves(40).
maxNumberOfActionsPlanned(20).

%INITIAL CONDITIONS AND STATE-SUCCESSOR AXIOMS
hunter(r(1,1),e,s0). 
hunter(R,D,do(A,S)) :- hunter(R0,D0,S), 
    ( 
        (A = left, R = R0, ((D0 = n, D = w);(D0 = e, D = n);(D0 = s, D = e);(D0 = w, D = s))); 
        (A = right, R = R0, ((D0 = n, D = e);(D0 = e, D = s);(D0 = s, D = w);(D0 = w, D = n))); 
        (A = forward, D = D0, getForwardRoom(R0,D0,RN), !, (w_Wall(RN) -> R = R0 ; R = RN))
    );
    ( 
        hunter(R,D,S), 
        \+A = left,
        \+A = right,
        \+A = forward
    ).

hunterAlive(s0). 
hunterAlive(do(A,S)) :- hunterAlive(S),
    (hunter(R,_,do(A,S)), \+w_Pit(R), (wumpusAlive(do(A,S)) -> \+w_Wumpus(R) ; true)).

wumpusAlive(s0). 
wumpusAlive(do(A,S)) :- wumpusAlive(S), 
    ((A = shoot, hasArrow(S), hunter(R0,D0,S), w_Wumpus(RW), isFacing(R0,D0,RW)) -> false ; true). 

hasArrow(s0). 
hasArrow(do(A,S)) :- 
    (   A = shoot -> false ; hasArrow(S)).

hasGold(s0) :- false. 
hasGold(do(A,S)) :-
    (   hasGold(S) 
    ;   (A = grab, w_Gold(R), hunter(R,_,S)) 
    ).

%PERCEPTIONS
perceiveBump(do(A,S)) :- A = forward, hunter(R,D,S), hunter(R,D,do(A,S)). 
perceiveGlitter(S) :- hunter(R,_,S), w_Gold(R). 
perceiveBreeze(S) :- hunter(R,_,S), w_Pit(RP), isAdjacent(R,RP). 
perceiveStench(S) :- hunter(R,_,S), w_Wumpus(RP), isAdjacent(R,RP). 
perceiveScream(do(A,S)) :- wumpusAlive(S), \+wumpusAlive(do(A,S)). 

%WORLD KNOWLEDGE
wall(R,do(A,S)) :- (perceiveBump(do(A,S)), hunter(Rh,Dh,do(A,S)), getForwardRoom(Rh,Dh,R)) ; wall(R,S). 
visited(r(1,1),s0).
visited(R,do(A,S)) :- hunter(R,_,do(A,S)) ; visited(R,S). 
gold(R,do(A,S)) :- (perceiveGlitter(do(A,S)),hunter(R,_,do(A,S))) ; gold(R,S).
breeze(R,s0) :- perceiveBreeze(s0),hunter(R,_,s0).
breeze(R,do(A,S)) :- (perceiveBreeze(do(A,S)),hunter(R,_,do(A,S))) ; breeze(R,S). 
stench(R,s0) :- perceiveStench(s0),hunter(R,_,s0).
stench(R,do(A,S)) :- (perceiveStench(do(A,S)),hunter(R,_,do(A,S))) ; stench(R,S). 
heardWumpusScream(s0) :- false.
heardWumpusScream(do(A,S)) :- perceiveScream(do(A,S)) ; heardWumpusScream(S). 

%WORLD EVALUATION
isOkRoom(R,S) :- \+possiblePit(R,S), (\+heardWumpusScream(S) -> \+possibleWumpus(R,S);true).

possiblePit(R,S) :- \+visited(R,S), getAdjacentRooms(R,LA), trimNotVisited(LA,S,LT), (LT = []; checkBreezeList(LT,S)).
checkBreezeList([],_).
checkBreezeList([H|T],S) :- checkBreezeList(T,S), breeze(H,S).
certainPit(RP,S) :-
    getAdjacentRooms(RP,LA),
    trimNotVisited(LA,S,LT),
    checkPitCertainty(RP,LT,S).
checkPitCertainty(_,[],_) :- false.
checkPitCertainty(RP,[H|T],S) :-
    breeze(H,S),
    (
        (
        getAdjacentRooms(H,LA),
        trimVisited(LA,S,LT),
        trimWall(LT,S,LT2),
        LT2 = [RP]
        )
        ; checkPitCertainty(RP,T,S)
    ).
	
possibleWumpus(R,S) :-
    (certainWumpus(RW,S) -> R = RW %a certain Wumpus is also a possible Wumpus
    ;   (\+visited(R,S), getAdjacentRooms(R,LA), trimNotVisited(LA,S,LT), (LT = []; checkStenchList(LT,S)))).
checkStenchList([],_).
checkStenchList([H|T],S) :- checkStenchList(T,S), stench(H,S).
certainWumpus(RW,do(A,S)) :-
     certainWumpus(RW,S); 
     (
     setof(R,stench(R,do(A,S)),[H|T]), 
     getAdjacentRooms(H,LA),
     trimVisited(LA,S,LAT),
     trimNotAdjacent(LAT,T,LT),
     LT = [RW] 
     ).

% HEURISTIC
heuristic(S,H) :-
    getAllExplorableRooms(S,L), 
    (\+L=[] -> getBetterExplorableRoom(S,L,P,R) ; P = 5000), 
    (   hasGold(S) -> H = exitCave 
    ;   (\+hasGold(S), gold(_R,S)) -> H = grabGold 
    ;   (certainWumpus(_RW,S),hasArrow(S),\+heardWumpusScream(S)) -> H = shootWumpus 
    ;   P < 100 -> H = move(R) 
    ;   H = exitCave 
    ).

getBetterExplorableRoom(S,L,P,R) :-
    rankRooms(L,S,RL),
    sort(RL,SRL),
    [Head|_] = SRL,
    rr(P,R) = Head.

rankRooms([],_,[]).
rankRooms([H|T],S,RL) :-
    rankRooms(T,S,LT),
    %Count actions
    doMove(H,ST,S),
    countActions(ST,S,NActions),
    %Check breeze and stench
    (isOkRoom(H,S) -> DangerPoints = 0; DangerPoints = 100),
    %Check certain Pit and Wumpus
    (certainPit(H,S) -> CertainPitPoints = 1000; CertainPitPoints = 0),
    ((\+heardWumpusScream(S), certainWumpus(H,S)) -> CertainWumpusPoints = 1000; CertainWumpusPoints = 0),
    Total is NActions + DangerPoints + CertainPitPoints + CertainWumpusPoints, 
    RR = rr(Total,H),
    add(RR,LT,RL).

%PLANNING
poss(forward,S) :- 
    hunter(R,D,S),
    getForwardRoom(R,D,RF),
    isOkRoom(RF,S).
poss(left,s0).
poss(left,do(A,_S)) :- \+A = right. 
poss(right,s0).
poss(right,do(A,_S)) :- \+A = left. 

%LEGALITY AXIOMS
legal(S,S). 
legal(do(A,S),S0):-
    maxNumberOfActionsPlanned(Max), 
    legal(S,S0), 
    countActions(S,S0,N), 
    (N > Max -> (!, write('REACHED MAX NUMBER OF ACTIONS PLANNED'),false) ; true), 
    poss(A,S). 

%MOVEMENT PLANNER
doMove(Rm, S0, S0) :- hunter(Rm,_,S0). 
doMove(Rm, do(forward,S), S0) :- legal(S,S0),hunter(R,D,S),isAdjacent(R,Rm),isFacing(R,D,Rm),!. 

doFace(Rm, S, S0) :- legal(S,S0),hunter(R,D,S),isFacing(R,D,Rm),!.

%ACTUATOR
doActions(H,S,S0) :-
    (   H = move(R) -> doMove(R,S,S0) 
    ;   H = grabGold -> (gold(R,S0), doMove(R,SI,S0), S = do(grab, SI)) 
    ;   H = shootWumpus -> (certainWumpus(RW,S0), doFace(RW,SI,S0), S = do(shoot, SI)) 
    ;   H = exitCave -> (hunter(R0,_,s0), doMove(R0,SI,S0), S = do(climb, SI)) 
    ;   H = climb -> S = do(climb, S0) 
    ;   H = forward -> S = do(forward, S0) 
    ;   H = left -> S = do(left, S0) 
    ;   H = right -> S = do(right, S0) 
    ;   H = grab -> S = do(grab, S0) 
    ;   H = shoot -> S = do(shoot, S0) 
    ).

%INTELLIGENT AGENT LOOP
runManyMaps(N0,NF) :- 
    consult('worldBuilder.pl'), 
    make, 
    runInSequence(N0,NF). 

run :-
    consult('worldBuilder.pl'), 
    run(1). %Ruins AIMA Map


runInSequence(N0,NF) :- 
    run(N0),
    N1 is N0+1,
    (N1 =< NF -> runInSequence(N1,NF) ; true). 

run(N) :-
    recreateWorld(N),
    format('~n~n~n   Playing on world ~d ~n~n~n', N),
    callTime(runloop(0,s0)).

runloop(T,_) :-
    maxNumberOfMoves(Max),
    T >= Max,
    write('Reached max number of moves'), !, false.

runloop(T,S0) :-
    hunter(r(X,Y),D,S0),
    format('Hunter at [~d,~d, ~w], ', [X,Y,D]),!,

    heuristic(S0,H),
    format('wants to do ~w, ', [H]), 

    doActions(H,S,S0),
    write('does '),
    planToActionList(S,S0,[],L),
    printList(L), 
    ((certainWumpus(RW,S),\+heardWumpusScream(S)) -> format('I am certain Wumpus is at ~w',RW);true), 
    format('~n'),

    NT is T+1, 

    do(A,_) = S, 
    hunter(RN,_,S), 
    hunter(R0,_,s0), 

    (   ((A = climb, RN = R0)  ; \+hunterAlive(S)) -> endLoop(S,A)
    ;   (!,runloop(NT,S))
    ),!.

endLoop(S,A) :-
    countActions(S,s0,N),
    format('~n~n   '),
    (hasGold(S) -> write('Got the gold'); write('Couldnt find gold')),
    ( \+hunterAlive(S) -> write(' and died') ; write(' and left the cave')),
    format(' in a total of ~d actions! ~n~n',N),
    %Scoring
    ((hasGold(S),A = climb) -> GoldPoints is 1000 ; GoldPoints is 0),
    (\+hunterAlive(S) -> DeathPoints is -1000 ; DeathPoints is 0),
    (hasArrow(S) ->ArrowPoints is 0 ; ArrowPoints is -10),
    Score is GoldPoints + DeathPoints + ArrowPoints - N,
    format('   Made a total of ~d Points.',Score).

%HELPERS
add(E,L,[E|L]). 

countList([],0). 
countList([_|Tail], N) :- countList(Tail, N1), N is N1 + 1.

trimNotVisited([],_,[]). 
trimNotVisited([H|T],S,LT) :- trimNotVisited(T,S,L), (visited(H,S) -> append([H],L,LT); LT = L).
trimVisited([],_,[]). 
trimVisited([H|T],S,LT) :- trimVisited(T,S,L), (visited(H,S) -> LT = L; append([H],L,LT)).
trimWall([],_,[]). 
trimWall([H|T],S,LT) :- trimWall(T,S,L), (wall(H,S) -> LT = L; append([H],L,LT)).
trimNotAdjacent([],_,[]). 
trimNotAdjacent(_,[],[]). 
trimNotAdjacent([LAH|LAT],[TH|TT],LT) :-
    trimNotAdjacent([LAH],TT,LT1),
    trimNotAdjacent(LAT,[TH|TT],LT2),
    append(LT1,LT2,LT3),
    (isAdjacent(LAH,TH) -> append([LAH],LT3,LT) ; LT = LT3).

planToActionList(S,S,ACC,ACC).
planToActionList(do(A,S1),S0,ACC,X) :- planToActionList(S1,S0,[A|ACC],X).

printList([]).
printList([A|B]) :-
    format('~w, ', A),
    printList(B).

getForwardRoom(r(X0,Y0),D0,r(XN,YN)) :-
    (D0 = n, XN is X0, YN is Y0+1);
    (D0 = e, XN is X0+1, YN is Y0);
    (D0 = s, XN is X0, YN is Y0-1);
    (D0 = w, XN is X0-1, YN is Y0).

isAdjacent(r(X,Y),r(XT,YT)) :-
    (X =:= XT, Y =:= YT+1);
    (X =:= XT, Y =:= YT-1);
    (X =:= XT+1, Y =:= YT);
    (X =:= XT-1, Y =:= YT).

isFacing(r(X,Y),D,r(XT,YT)) :-
    (D = n, X =:= XT, YT > Y);
    (D = s, X =:= XT, YT < Y);
    (D = e, Y =:= YT, XT > X);
    (D = w, Y =:= YT, XT < X).

getAdjacentRooms(r(X,Y),L) :-
    XL is X-1,
    XR is X+1,
    YD is Y-1,
    YU is Y+1,
    append([r(XL,Y), r(XR,Y), r(X,YU), r(X,YD)],[],L).

getAllExplorableRooms(S,L) :- getAllExplorableRooms(S,S,L). 
getAllExplorableRooms(S,s0,L) :-
    hunter(R,_,s0),
    getAdjacentRooms(R,LA),
    appendWithExplorableCheck(LA,S,[],L).
getAllExplorableRooms(S,do(A,S0),L) :-
    getAllExplorableRooms(S,S0,L0),
    hunter(R,_,do(A,S0)),
    getAdjacentRooms(R,LA),
    appendWithExplorableCheck(LA,S,L0,L).

appendWithExplorableCheck([],_,L2,L2).
appendWithExplorableCheck([H|T],S,L2,L) :-
    appendWithExplorableCheck(T,S,L2,LT),
    (   isExplorable(H,S,LT) -> L = [H|LT] ; L = LT).

isExplorable(R,S,L) :- \+member(R,L), \+wall(R,S), \+visited(R,S).

countActions(s0,s0,0).
countActions(S,S,0).
countActions(do(_A,S),S0,N) :- 
    countActions(S,S0,N0),
    N is N0+1.

callTime(G,T) :- 
    statistics(runtime,[T0|_]),
    G,
    statistics(runtime,[T1|_]),
    T is T1 - T0.

callTime(G) :- 
    callTime(G,T),
    format('~n~n[Time to run in ms: ~d]',T).


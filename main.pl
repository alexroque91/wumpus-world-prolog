/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   Wumpus World - by Alexander Csóka Roque
   Written in São Paulo, Brazil, April 2018
   This was developed as a exercise for the Artificial Intelligence
   Course at Universidade de São Paulo.
   Even though the entire code was made from scratch, I referenced
   Markus Triska's work (www.metalevel.at/wumpusworld/wumpus.pl),
   hilios(github.com/hilios/wumpus-prolog/blob/master/src/heuristic.pl)
   and more importantly, Pilar Pozos, Edgardo Yescas and Jacob Vásquez
   in "Planning using situation calculus, prolog and a mobile robot".

   IMPORTANT FOR UNDERSTANDING THE WORK
   This is one of the many different approaches for the Wumpus World.
   I've combined Situational Calculus, State-successor axioms, Planning
   and Heuristics to create an Intelligent Agent capable of solving the
   problem. The characteristics of the problem are the ones presented on
   the book Artificial Intellince: A Modern Approach (AIMA).

   R=r(X,Y) will be used as reference for a certain room at position X,Y.
   S is used for situations. do(A,S) is the situation after doing
   action A on situation S.
   w_ is a prefix used for world characteristics, unknown by the agent.

   Public domain code.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

% These must be dynamic so that many different worlds might be created
% at runtime.
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
% These clauses indicate a certain initial situation and how world object
% react to actions the agent performs in the world. Any objects state in
% any situation can be obtained by an initial situation and a series of
% actions (Situation) using recursion.

% Hunter Position and Facing Direction on each situation
hunter(r(1,1),e,s0). %Start at cave entry r(1,1), facing east
hunter(R,D,do(A,S)) :- hunter(R0,D0,S), %get hunter info at last situation
    ( %if action changes hunter position
        (A = left, R = R0, ((D0 = n, D = w);(D0 = e, D = n);(D0 = s, D = e);(D0 = w, D = s))); %turn left
        (A = right, R = R0, ((D0 = n, D = e);(D0 = e, D = s);(D0 = s, D = w);(D0 = w, D = n))); %turn right
        (A = forward, D = D0, getForwardRoom(R0,D0,RN), !, (w_Wall(RN) -> R = R0 ; R = RN)) %go forward
    );
    ( %no actions that change hunter position happened
        hunter(R,D,S), %Position of hunter now same as before
        \+A = left,
        \+A = right,
        \+A = forward
    ).

%Hunters Life
hunterAlive(s0). %Hunter is alive if he was alive in the last situation and the action taken didnt kill him now
hunterAlive(do(A,S)) :- hunterAlive(S),
    (hunter(R,_,do(A,S)), \+w_Pit(R), (wumpusAlive(do(A,S)) -> \+w_Wumpus(R) ; true)).

%Wumpus Life
wumpusAlive(s0). %Starts alive
wumpusAlive(do(A,S)) :- wumpusAlive(S), %if he was dead in previous situations, remain dead
    ((A = shoot, hasArrow(S), hunter(R0,D0,S), w_Wumpus(RW), isFacing(R0,D0,RW)) -> false ; true). %If he is shot, he dies

%Has the one arrow that can kill a Wumpus
hasArrow(s0). %Starts with arrow
hasArrow(do(A,S)) :- %Return false and stays false after using shoot action once
    (   A = shoot -> false ; hasArrow(S)).

%Indicates whether hunter has the gold
hasGold(s0) :- false. %Starts without gold
hasGold(do(A,S)) :-
    (   hasGold(S) %If hunter had the gold before, still has now
    ;   (A = grab, w_Gold(R), hunter(R,_,S)) %If hunter use grab at the same room as gold, pick it up
    ).

%PERCEPTIONS
% Much like the state-successor axioms, the perceptions work seamlessly
% with the situations. These are supplied to the agent to generate world
% knowledge.
perceiveBump(do(A,S)) :- A = forward, hunter(R,D,S), hunter(R,D,do(A,S)). %If uses forward but remains the same, hit a wall, hence feels bump
perceiveGlitter(S) :- hunter(R,_,S), w_Gold(R). %If at the same room as gold, perceive Glitter
perceiveBreeze(S) :- hunter(R,_,S), w_Pit(RP), isAdjacent(R,RP). %If adjacent to a Pit, perceibe breeze
perceiveStench(S) :- hunter(R,_,S), w_Wumpus(RP), isAdjacent(R,RP). %If adjacent to a Wumpus (Dead or Alive), perceive Stench
perceiveScream(do(A,S)) :- wumpusAlive(S), \+wumpusAlive(do(A,S)). %If Wumpus was alive and now is dead, perceive Scream

%WORLD KNOWLEDGE
% Also work seamlessly by using information from past situations and
% perceptions to build on useful world knowledge.
wall(R,do(A,S)) :- (perceiveBump(do(A,S)), hunter(Rh,Dh,do(A,S)), getForwardRoom(Rh,Dh,R)) ; wall(R,S). %Agent remembers bumping into walls
visited(r(1,1),s0).
visited(R,do(A,S)) :- hunter(R,_,do(A,S)) ; visited(R,S). %Agente remembers all rooms he has visited
gold(R,do(A,S)) :- (perceiveGlitter(do(A,S)),hunter(R,_,do(A,S))) ; gold(R,S). %Once gold is found, remember where it was
breeze(R,s0) :- perceiveBreeze(s0),hunter(R,_,s0).
breeze(R,do(A,S)) :- (perceiveBreeze(do(A,S)),hunter(R,_,do(A,S))) ; breeze(R,S). %Remember where breeze was perceived
stench(R,s0) :- perceiveStench(s0),hunter(R,_,s0).
stench(R,do(A,S)) :- (perceiveStench(do(A,S)),hunter(R,_,do(A,S))) ; stench(R,S). %Remember where stench was perceived
heardWumpusScream(s0) :- false.
heardWumpusScream(do(A,S)) :- perceiveScream(do(A,S)) ; heardWumpusScream(S). %Represent actual knowledge of hearing the wumpus scream (and hopefully die)

%WORLD EVALUATION
% These are extra tools given to the agent to evaluate world
% characteristics. These should be used by the heuristic to evaluate
% different possible actions and choose the best.

% A room is considered ok if there is no chance it has a pit or an alive wumpus
isOkRoom(R,S) :- \+possiblePit(R,S), (\+heardWumpusScream(S) -> \+possibleWumpus(R,S);true).

% Evaluates possibility of pit in a certain room. Checks if all adjacent
% rooms that were visited had breezes
possiblePit(R,S) :- \+visited(R,S), getAdjacentRooms(R,LA), trimNotVisited(LA,S,LT), (LT = []; checkBreezeList(LT,S)).
checkBreezeList([],_).
checkBreezeList([H|T],S) :- checkBreezeList(T,S), breeze(H,S).

% One can only be certain of a pits position if there is a room with
% breeze where 3 adjacent rooms were visited and don't have a pit. The
% pit is in the fourth room certainly.
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

% Evaluates possibility of Wumpus in a certain room. Checks if all
% adjacent rooms that were visited had stench
possibleWumpus(R,S) :-
    (certainWumpus(RW,S) -> R = RW %a certain Wumpus is also a possible Wumpus
    ;   (\+visited(R,S), getAdjacentRooms(R,LA), trimNotVisited(LA,S,LT), (LT = []; checkStenchList(LT,S)))).
checkStenchList([],_).
checkStenchList([H|T],S) :- checkStenchList(T,S), stench(H,S).

% More easily than checking for pits, as we know there is only one
% Wumpus, one can mix and match adjacent rooms of two or more rooms with
% stench. If only one room that wasnt visited remains, the Wumpus must
% be there.
certainWumpus(RW,do(A,S)) :-
     certainWumpus(RW,S); %Check first Wumpus certainty before, because if he is killed and the hunter visits the space the rest of the code returns false
     (
     setof(R,stench(R,do(A,S)),[H|T]), %H is going to be used as reference, and T will help
     getAdjacentRooms(H,LA),
     trimVisited(LA,S,LAT),
     trimNotAdjacent(LAT,T,LT),
     LT = [RW] %If only one room is reached, that is where the wumpus is
     ).

% HEURISTIC
% Here is where you teach the intelligent agent different strategies
% to make decisions. At the end of the heuristic cycle, a major action
% must be returned. Possible major actions are:
%   move(R) - Move to a certain room. Should be used to explore or move
%       to strategic places.
%   grabGold - Should only be used if gold position is known. If not on
%       gold position, moves through known squares to go grab it.
%   shootWumpus - Should only be used if wumpus position is known. Does
%       the least amount of moves on known squares and shoots Wumpus.
%   exitCave - moves to cave entrance and climb out.
%   left, right, forward, grab, shoot, climb - does action without
%       checking anything.
%
% If you want to implement you own heuristic or strategy, do changes
% in the code below.
%
% This heuristic explores with the least amount of actions possible,
% shoots Wumpus as soon as he is certain and doesn't take risks on
% exploration. This will sometimes take a while!
heuristic(S,H) :-
    getAllExplorableRooms(S,L), %Get entire list of all rooms adjacent to rooms that were visited
    (\+L=[] -> getBetterExplorableRoom(S,L,P,R) ; P = 5000), %Only run ranking of rooms if there are rooms to rank
    (   hasGold(S) -> H = exitCave %If hunter has gold, proceed to exit
    ;   (\+hasGold(S), gold(_R,S)) -> H = grabGold %If doesn't have gold but knows where it is, go get it
    ;   (certainWumpus(_RW,S),hasArrow(S),\+heardWumpusScream(S)) -> H = shootWumpus %If is certain of where the Wumpus is, has arrow and Wumpus is alive, shoot him
    ;   P < 100 -> H = move(R) %Only move if best room to explore is not dangerous
    ;   H = exitCave %If no rooms to explore, exit cave
    ).

getBetterExplorableRoom(S,L,P,R) :-
    rankRooms(L,S,RL),
    sort(RL,SRL),
    [Head|_] = SRL,
    rr(P,R) = Head.

% Ranks rooms by number of actions to explore and danger levels
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
    Total is NActions + DangerPoints + CertainPitPoints + CertainWumpusPoints, %Saves rank for each room
    RR = rr(Total,H),
    add(RR,LT,RL).

%PLANNING
% The following clauses should be used for planning of actions. Planning
% will perform a Breadth First Search from a certain situation using
% actions to reach a desired goal. When performing planning for
% sequences of more than 10 actions this can take a long while.

% Preconditions for primitive actions. Define whether an action can be
% taken at each situation.
poss(forward,S) :- %Allow planning only on visited and ok rooms.
    hunter(R,D,S),
    getForwardRoom(R,D,RF),
    isOkRoom(RF,S).
poss(left,s0).
poss(left,do(A,_S)) :- \+A = right. %Limit redundant turning
poss(right,s0).
poss(right,do(A,_S)) :- \+A = left. %Limit redundant turning

%Legality axioms - Makes certain that a situation is possible and legal
%legal(S,S0) reads: If S0 is legal, return whether S is legal
legal(S,S). %If S is legal, S is legal
legal(do(A,S),S0):-
    maxNumberOfActionsPlanned(Max), %Get maximum allowed number of actions
    legal(S,S0), %Tries to find legal actions, starting from provided situation S0
    countActions(S,S0,N), %Count number of actions from S0 to S
    (N > Max -> (!, write('REACHED MAX NUMBER OF ACTIONS PLANNED'),false) ; true), %If too many actions are being taken, probably there is no solution, hence return false
    poss(A,S). %Check which actions are allowed at S

% Movement planner - The last forward action is forced, even if it
% doesn't result in the hunter's movement. That must be done because if
% the hunter hits a wall it won't know it hasn't moved until it receive
% a bump as a perception.
% doMove(R,S,S0) returns a plan of a sequence of movement actions that
% make the hunter in situation S0 move to R. S is returned as the
% resulting situation.
doMove(Rm, S0, S0) :- hunter(Rm,_,S0). %Moving to where the hunter is returns no actions
doMove(Rm, do(forward,S), S0) :- legal(S,S0),hunter(R,D,S),isAdjacent(R,Rm),isFacing(R,D,Rm),!. %Reads: Which is a situation S supposing S0 is legal, where the hunter is at R?

doFace(Rm, S, S0) :- legal(S,S0),hunter(R,D,S),isFacing(R,D,Rm),!. %Similar to doMove, but only faces de target

%ACTUATOR
% After the heuristic defines a major action, this clause will convert
% that action to a situation with planning. Passing this situation to
% the next loops counts as acting.
doActions(H,S,S0) :-
    (   H = move(R) -> doMove(R,S,S0) %Move
    ;   H = grabGold -> (gold(R,S0), doMove(R,SI,S0), S = do(grab, SI)) %Move and then grab
    ;   H = shootWumpus -> (certainWumpus(RW,S0), doFace(RW,SI,S0), S = do(shoot, SI)) %Face Wumpus and shoot
    ;   H = exitCave -> (hunter(R0,_,s0), doMove(R0,SI,S0), S = do(climb, SI)) %Moves to entry and climbs
    ;   H = climb -> S = do(climb, S0) %Climb
    ;   H = forward -> S = do(forward, S0) %Does Forward
    ;   H = left -> S = do(left, S0) %Does Left
    ;   H = right -> S = do(right, S0) %Does Right
    ;   H = grab -> S = do(grab, S0) %Does Grab
    ;   H = shoot -> S = do(shoot, S0) %Does Shoot
    ).

%INTELLIGENT AGENT LOOP
% An entire Agent Loop consists of perceptions, Gathering World
% Knowledge, Heuristic (Deciding actions), Planning and acting. The
% following clauses will run the loops while printing relevant
% information so that we can watch our little AI moving. Each loop
% consists of a few smaller actions that are planned, but only one major
% heuristic action.
% In this version of the program, one should use the runManyMaps(N0,NF)
% clause to run a bunch of maps in sequence.
runManyMaps(N0,NF) :- %Runs map N0 until NF inclusive in sequence.
    consult('worldBuilder.pl'), %This file has information for different maps
    make, %Reset files if changed
    runInSequence(N0,NF). %Runs many maps in sequence

run :-
    consult('worldBuilder.pl'), %This file has information for different maps
    run(1). %Ruins AIMA Map


runInSequence(N0,NF) :- %This loops through different maps and runs agent in each one
    run(N0),
    N1 is N0+1,
    (N1 =< NF -> runInSequence(N1,NF) ; true). %Run next map if not done.

run(N) :-
    recreateWorld(N),
    format('~n~n~n   Playing on world ~d ~n~n~n', N),
    callTime(runloop(0,s0)).

% This clause is called before the actual loop to check if maximum
% number of moves has been reached (Stops if its taking too long)
runloop(T,_) :-
    maxNumberOfMoves(Max),
    T >= Max,
    write('Reached max number of moves'), !, false.

%Main loop.
runloop(T,S0) :-
    %Gets current hunter position and prints.
    hunter(r(X,Y),D,S0),
    format('Hunter at [~d,~d, ~w], ', [X,Y,D]),!,

    %Get action from heuristic (Strategy) in this situation
    heuristic(S0,H),
    format('wants to do ~w, ', [H]), %Prints desired action

    %Calls actuators which use planning to do Actions
    doActions(H,S,S0),
    write('does '),
    planToActionList(S,S0,[],L),
    printList(L), %Prints list of all smaller actions that were done.
    ((certainWumpus(RW,S),\+heardWumpusScream(S)) -> format('I am certain Wumpus is at ~w',RW);true), %Prints Wumpus position if certain
    format('~n'),

    NT is T+1, %Set new timestep

    %The following are needed to check if hunter climbed out of the cave
    do(A,_) = S, %Get last action done
    hunter(RN,_,S), %Get hunters position now
    hunter(R0,_,s0), %Get Cave entry

    %If hunter climbed out or died, endloop. If not, run next loop.
    (   ((A = climb, RN = R0)  ; \+hunterAlive(S)) -> endLoop(S,A)
    ;   (!,runloop(NT,S))
    ),!.

% After Ending the loop, game is over, print everything that is
% interesting to file.
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
%These are helper functions that make the programming above easier
add(E,L,[E|L]). %Adds element to list

countList([],0). %Counts number of elements in list
countList([_|Tail], N) :- countList(Tail, N1), N is N1 + 1.

trimNotVisited([],_,[]). %Removes rooms that weren't visited from list of rooms
trimNotVisited([H|T],S,LT) :- trimNotVisited(T,S,L), (visited(H,S) -> append([H],L,LT); LT = L).
trimVisited([],_,[]). %Removes rooms that were visited from list of rooms
trimVisited([H|T],S,LT) :- trimVisited(T,S,L), (visited(H,S) -> LT = L; append([H],L,LT)).
trimWall([],_,[]). %Removes rooms that have been confirmed as walls from list of rooms
trimWall([H|T],S,LT) :- trimWall(T,S,L), (wall(H,S) -> LT = L; append([H],L,LT)).
trimNotAdjacent([],_,[]). %used as trimNotAdjacent(L,T,LT)
trimNotAdjacent(_,[],[]). %Removes rooms from List L that are no adjacent to any room in list T
trimNotAdjacent([LAH|LAT],[TH|TT],LT) :-
    trimNotAdjacent([LAH],TT,LT1),
    trimNotAdjacent(LAT,[TH|TT],LT2),
    append(LT1,LT2,LT3),
    (isAdjacent(LAH,TH) -> append([LAH],LT3,LT) ; LT = LT3).

%Converts plan (Actions from one situation to another) to Action list
planToActionList(S,S,ACC,ACC).
planToActionList(do(A,S1),S0,ACC,X) :- planToActionList(S1,S0,[A|ACC],X).

%Prints List
printList([]).
printList([A|B]) :-
    format('~w, ', A),
    printList(B).

%Returns room in front of another in a certain direction
getForwardRoom(r(X0,Y0),D0,r(XN,YN)) :-
    (D0 = n, XN is X0, YN is Y0+1);
    (D0 = e, XN is X0+1, YN is Y0);
    (D0 = s, XN is X0, YN is Y0-1);
    (D0 = w, XN is X0-1, YN is Y0).

%Checks if one room is adjacent to another room
isAdjacent(r(X,Y),r(XT,YT)) :-
    (X =:= XT, Y =:= YT+1);
    (X =:= XT, Y =:= YT-1);
    (X =:= XT+1, Y =:= YT);
    (X =:= XT-1, Y =:= YT).

%Checks if a hunter in room R, looking to Direction D is facing room RT
isFacing(r(X,Y),D,r(XT,YT)) :-
    (D = n, X =:= XT, YT > Y);
    (D = s, X =:= XT, YT < Y);
    (D = e, Y =:= YT, XT > X);
    (D = w, Y =:= YT, XT < X).

%Returns list of all adjacent rooms
getAdjacentRooms(r(X,Y),L) :-
    XL is X-1,
    XR is X+1,
    YD is Y-1,
    YU is Y+1,
    append([r(XL,Y), r(XR,Y), r(X,YU), r(X,YD)],[],L).

% The following functions are used to get a list of explorable rooms.
% Those are rooms adjacent to rooms that were already visited. All rooms
% on the border of what has been explored. In a certain situation S a
% list L is returned with all possible rooms.
getAllExplorableRooms(S,L) :- getAllExplorableRooms(S,S,L). %Simplifies call
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

%Counts number of actions between two situations
countActions(s0,s0,0).
countActions(S,S,0).
countActions(do(_A,S),S0,N) :- %Count number of actions between two situations
    countActions(S,S0,N0),
    N is N0+1.

callTime(G,T) :- %Returns Call Time
    statistics(runtime,[T0|_]),
    G,
    statistics(runtime,[T1|_]),
    T is T1 - T0.

callTime(G) :- %Prints Call Time
    callTime(G,T),
    format('~n~n[Time to run in ms: ~d]',T).


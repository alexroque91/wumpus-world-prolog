# Wumpus World using Prolog

The Wumpus World (Originally Hunt the Wumpus) is a game created by Gregory Yob ([Origins](https://www.atariarchives.org/bcc1/showpage.php?page=247)) and which is presented simplified in *Artificial Intelligence a Modern Approach* (*AIMA*) as an exercise for developing an Intelligent Agent that uses logic. The code presented here is one of the many possible approaches to the problem using Prolog.

## Getting Started

The code uses logic programming, situational calculus, planning and heuristics to create an intelligent agent that plays the game. The original code is exaggeratedly commented (for beginners), so a less commented version was provided for those that already understand Prolog better.

### Preparing the ground

To run this code you must first install a Prolog Environment such as SWI-Prolog. Once installed, double click the [main.pl](main.pl) file to open the environment on the folder. As the [main.pl](main.pl) file consults the [worldBuilder.pl](worldBuilder.pl) file, they must always be in the same folder, and the environment should be opened on that same folder.

### Running

Once the enviroment is opened, type the following query on the Prolog environment:

```
run.
or
runManyMaps(1,1000).
```
"run." will always play the *AIMA* map, while runManyMaps(X,Y) will run all maps subsequently from X to Y. 2000 maps where provided in the [worldBuilder.pl](worldBuilder.pl), which were randomly generated following *AIMA* rules.

## Built With

* [SWI-Prolog](http://www.swi-prolog.org) - The Prolog environment used.

## Author

* **Alexander Csóka Roque** - *developed in April 2018*

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## References

* Pilar Pozos, Edgardo Yescas and Jacob Vásquez in "Planning using situation calculus, prolog and a mobile robot".
* Markus Triska ([Code](https://www.metalevel.at/wumpusworld/wumpus.pl)).
* Hilios ([Repo](https://github.com/hilios/wumpus-prolog)).

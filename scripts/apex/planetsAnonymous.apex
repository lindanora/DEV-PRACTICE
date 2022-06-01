Planets pl = new Planets();
pl.planetName = 'Venus';
pl.planetNumber = 2;
pl.numOfMoons = 0;
System.debug(pl);

Planets pl2 = new Planets();
pl2.planetName = 'Earth';
pl2.planetNumber = 3;
pl2.numOfMoons = 1;
System.debug(pl2.planetName + ' is the ' + pl2.planetNumber + 'rd planet with ' + pl2.numOfMoons + ' moon.');

ListPractice.addPlanet('Jupiter', 7, 3);
ListPractice.addPlanet('', 7, 3);




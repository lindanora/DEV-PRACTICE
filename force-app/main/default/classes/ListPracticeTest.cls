@isTest
public class ListPracticeTest {
    @isTest
    private static void addPlanetMethod1() {
        Planets pl =new Planets();
        pl.planetName= 'Venus';
        pl.numberOfMoons = 2;
        pl.planetNumber = 3;   
        Planets.add(pl);
        
        system.assertEquals('Mars', pl.planetName);
        system.assertEquals(2, pl.planetNumber);

    }
    
}

@istest
public with sharing class OperationHelperTest {
    @isTest
    static void TetsMethod(){
        //create an instance
        operationHelper op = new OperationHelper();
        //call the first method
        system.assertEquals(0.2, op.largestOutOfTwoNumbers(0.1, 0.2));
        System.assertEquals(0.3, op.largestOutOfTwoNumbers(0.3, 0.2));
}
@isTest
static void sumOflistValuesTest(){
    OperationHelper op = new OperationHelper();
    List<Decimal> Dclst = new List<Decimal>{0.2, 0.4, 3.2};
    System.assertEquals(3.8, op.sumofListValues(Dclst));
    List<Decimal> dclst2 = new List<Decimal>{};
    System.assertEquals(null, op.sumofListValues(dclst2));
}
@istest
static void highestOfListValuesTest(){
    list<decimal> lstDec = new List<Decimal>{};
    operationHelper op = new OperationHelper();
    system.assertEquals(null, op.highestOfListValues(lstDec)); 
    List<Decimal> lstDec1 = new List<Decimal>{2.4, 4.5, 3.1};
    system.assertEquals(4.5, op.highestOfListValues(lstDec1)); 
}
@istest
static void reverseOrderPrintTest(){
    List<Object> lstOb = new List<Object>{'Ali ', 'topu ', 'at ', 2.3};
    OperationHelper op = new OperationHelper();
    system.assertEquals(2.3, op.reverseOrderPrint(lstOb)[0]);
}
}


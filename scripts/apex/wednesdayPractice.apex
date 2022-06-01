// 1
List<Opportunity> oppsWithAnnRev = [select id, name from opportunity where account.annualrevenue > 5000];
// 2
set<string> letters = new set<letters> {'a%','e%','u%','i%','o%'};
list<contact> contacts = [select id, name, lastname from contact where lastname like :letters];
system.debug(contacts);
// 3
list<AggregateResult> oppsWstage = [select count(id), stagename from opportunity group by stagename];
System.debug(oppsWstage);
// 4
list<AggregateResult> maxAnnRev = [select accountsource, max(annualrevenue) from account group by accountsource ];
system.debug(maxAnnRev);
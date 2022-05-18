:auto USING PERIODIC COMMIT 2000 
LOAD CSV WITH HEADERS FROM "file:///Relationships_wo_options.csv" AS row
//look up the two nodes we want to connect up
MATCH (f:company {id:row.cik_Filing}), (h:company {id:row.CIK})
//now create a relationship between them
CREATE (f)-[:Holds{value:row.value, titleOfClass:row.titleOfClass, putCall:row.putCall,investmentDiscretion:row.investmentDiscretion}]->(h);

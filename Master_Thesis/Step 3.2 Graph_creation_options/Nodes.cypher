:auto USING PERIODIC COMMIT 50 
LOAD CSV WITH HEADERS FROM "file:///Nodes_options.csv"as  csvline
CREATE (f:company {id:(csvline.cik),company:(csvline.companyName)})

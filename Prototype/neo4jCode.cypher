//Air plane
CREATE (Airbus373:Plane {Name:'Airbus373', partNumber:2, tagline:'Airbus373 air plane model',width:10.35,hieght:3.5,lenght:55.9})

//Air plane engines
CREATE (FirstEngine:PlanePart {Name:'Engine', partNumbers:1, tagline:'Airbus373 air plane first engine',width:10.35,hieght:3.5,lenght:55.9})
CREATE (SecondEngine:PlanePart {Name:'Engine', partNumbers:2, tagline:'Airbus373 air plane second engine',width:10.35,hieght:3.5,lenght:55.9})
CREATE (ThirdEngine:PlanePart {Name:'Engine', partNumbers:3, tagline:'Airbus373 air plane third engine',width:10.35,hieght:3.5,lenght:55.9})


//Engine Parts

CREATE (FirstEngineFirstPart:EnginePart {Name:'Engine Part', partNumbers:1, tagline:'first engine first part',width:10.35,hieght:3.5,lenght:55.9})
CREATE (FirstEngineSecondPart:EnginePart {Name:'Engine Part', partNumbers:1, tagline:'first engine second part',width:10.35,hieght:3.5,lenght:55.9})
CREATE (FirstEngineThirdPart:EnginePart {Name:'Engine Part', partNumbers:1, tagline:'first engine third part',width:10.35,hieght:3.5,lenght:55.9})

CREATE (SecondEngineFirstPart:EnginePart {Name:'Engine Part', partNumbers:2, tagline:'second engine first part',width:10.35,hieght:3.5,lenght:55.9})
CREATE (SecondEngineSecondPart:EnginePart {Name:'Engine Part', partNumbers:2, tagline:'second engine second part',width:10.35,hieght:3.5,lenght:55.9})
CREATE (SecondEngineThirdPart:EnginePart {Name:'Engine Part', partNumbers:2, tagline:'second engine third part',width:10.35,hieght:3.5,lenght:55.9})

CREATE (ThirdEngineFirstPart:EnginePart {Name:'Engine Part', partNumbers:3, tagline:'third engine first part',width:10.35,hieght:3.5,lenght:55.9})
CREATE (ThirdEngineSecondPart:EnginePart {Name:'Engine Part', partNumbers:3, tagline:'third engine second part',width:10.35,hieght:3.5,lenght:55.9})
CREATE (ThirdEngineThirdPart:EnginePart {Name:'Engine Part', partNumbers:3, tagline:'third engine third part',width:10.35,hieght:3.5,lenght:55.9})

//fuselages
CREATE (PlaneFuselage:PlanePart {Name:'Plane Fuselage', partNumbers:2, tagline:'Airbus373 air plane Fuselage part',width:10.35,hieght:3.5,lenght:55.9})


//fuselage parts
CREATE (FirstFuselagePart:FuselagePart {Name:'Fuselage Part', partNumbers:1, tagline:'fuselage  first part',width:10.35,hieght:3.5,lenght:55.9})
CREATE (SecondFuselagePart:FuselagePart {Name:'Fuselage Part', partNumbers:2, tagline:'fuselage second part',width:10.35,hieght:3.5,lenght:55.9})


//wings
CREATE (PlaneWing:PlanePart {Name:'Plane wings', partNumbers:1, tagline:'Airbus373 air plane wing part',width:10.35,hieght:3.5,lenght:55.9})



//wings parts
CREATE (FirstWingPart:WingPart {Name:'Wing Part', partNumbers:1, tagline:'wing  first part',width:10.35,hieght:3.5,lenght:55.9,dateOfNextCheck:'14-10-2019',LifeSpan:3})
CREATE (SecondWingPart:WingPart {Name:'Wing Part', partNumbers:2, tagline:'wing second part',width:10.35,hieght:3.5,lenght:55.9,dateOfNextCheck:'14-10-2019',LifeSpan:3})




CREATE
(FirstEngine)-[:ACTED_IN {role:['Part of']}]->(Airbus373),
(SecondEngine)-[:ACTED_IN {role:['Part of']}]->(Airbus373),
(ThirdEngine)-[:ACTED_IN {role:['Part of']}]->(Airbus373),

(FirstEngineFirstPart)-[:ACTED_IN {role:['Part of']}]->(FirstEngine),
(FirstEngineSecondPart)-[:ACTED_IN {role:['Part of']}]->(FirstEngine),
(FirstEngineThirdPart)-[:ACTED_IN {role:['Part of']}]->(FirstEngine),

(SecondEngineFirstPart)-[:ACTED_IN {role:['Part of']}]->(SecondEngine),
(SecondEngineSecondPart)-[:ACTED_IN {role:['Part of']}]->(SecondEngine),
(SecondEngineThirdPart)-[:ACTED_IN {role:['Part of']}]->(SecondEngine),

(ThirdEngineFirstPart)-[:ACTED_IN {role:['Part of']}]->(ThirdEngine),
(ThirdEngineSecondPart)-[:ACTED_IN {role:['Part of']}]->(ThirdEngine),
(ThirdEngineThirdPart)-[:ACTED_IN {role:['Part of']}]->(ThirdEngine),

(PlaneFuselage)-[:ACTED_IN {role:['Part of']}]->(Airbus373),

(FirstFuselagePart)-[:ACTED_IN {role:['Part of']}]->(PlaneFuselage),
(SecondFuselagePart)-[:ACTED_IN {role:['Part of']}]->(PlaneFuselage),

(PlaneWing)-[:ACTED_IN {role:['Part of']}]->(Airbus373),

(FirstWingPart)-[:ACTED_IN {role:['Part of']}]->(PlaneWing),
(SecondWingPart)-[:ACTED_IN {role:['Part of']}]->(PlaneWing)









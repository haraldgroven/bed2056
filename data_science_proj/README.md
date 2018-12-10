# BED2056 Data science project 2018 

R-prosjekt for kobling og analyse av survey-undersøkelser viktigste egenskaper i forskjellige yrker sammenstilt med SSBs lønnsstatistikk for samme yrker. 

## Motivasjon: 		
Hvilke personlige egenskaper, ferdigheter, evner og kunnskaper er viktigst for ulike yrker og i hvilken grad korrelerer disse med yrkes lønnsnivå? I denne analysen vil jeg koble det omfattende datasettet for hvilke personegenskaper som er viktigst i ulike yrker, med Statistisk sentralbyrås lønnsstatistikk for hver yrkeskategori i Norge. Målet er å lage en oversikt hvilke typer kompetanse og ferdigheter som har stor etterspørsel i arbeidsmarkedet, operasjonalisert gjennom høyt lønnsnivå. Dette skal kunne brukes for å velge ut hvilke variabler som bør undersøkes i fremtidige analyser for å kunne brukes til å lage digitale nettjenester. 

## Opprinnelig spørsmål 
Hvilke jobbrelaterte kunnskaper og ferdigheter er mest etterspurt i norsk arbeidsliv? De aller fleste 15-25-åringer samt alle som jobber i utdanningssektoren lurer på — eller burde — undersøke dette spørsmålet. Variablene med disse egenskapene kunne vært analysert med prinsipal-komponentanalyse (PCA) eller andre andre statistiske teknikker for å isolere hvilke variabler som har størst forklaringskraft. Men før slike analyser kan utføres, må det kobles sammen datasett.  

## Lignende arbeid: 
HR- og rekrutteringsbransjen bruker ofte selvlagede kartleggingsverktøy av ymse kvalitet. Dessuten finnes det enkelte verktøy utviklet for rådgiving som er mer teoretisk, ikke empirisk basert. 

## Datakilder
US Bureau of Labor Statistics har store spørreundersøkelser gjennom flere tiår skapt et stort datasett med 130 variabler for 1100 yrker. Variabler, kategorier og yrkesbetegnelser har blitt oversatt til norsk, og koblet til tilsvarende norske yrker. I denne analysen kobles de amerikanske dataene sammen med forslagene til norske oversettinger for å gi et bedre inntrykk av om datasettet fungerer i norsk kontekst. Siden 2015 har Statistisk sentralbyrå publisert gjennomsnitts- og medianlønn for 300 ulike yrker. 

## Utforskende dataanalyse (EDA)
Jeg plottet inn hver av variablene knyttet til yrker og yrkenes lønnsnivå (i kr månedslønn) for å visuelt se bivariat korrelasjon mellom variablene. Dette for å kunne se om det er en positiv, eller av og til negativ korrelasjon mellom denne ferdigheten og lønnsnivå. Dessuten kunne en se hvilke yrker hvor betydningen av denne ferdigheten var særlig betydningsfull for arbeidet. 
I en interaktiv graf (Shiny e.lign.) ville trolig vært bedre egnet for å gi tilgang til et stort antall variabler, og kunne veksle mellom disse. En 3D-graf (webgl) eller multivariat graf (Rosling-graf) kunne gjort det mulig å veksle mellom hvilke variabler som burde vises på aksene. 




[BED-2056](https://uit.no/utdanning/emner/emne/568242/bed-2056) Data Science at Faculty of Biosciences, Fisheries and Economics UIT.


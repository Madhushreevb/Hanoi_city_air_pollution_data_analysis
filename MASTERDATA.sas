OPTIONS VALIDVARNAME = V7;
libname PROJECT "/folders/myfolders/final assignment";

FILENAME REFFILE '/folders/myfolders/final assignment/Team_Project_Master.csv';
PROC IMPORT DATAFILE = REFFILE
		DBMS=CSV
		OUT=work.finaldata;
		GETNAMES=YES;
RUN;

proc corr data=WORK.FINALDATA pearson nosimple noprob 
		plots=scatter(ellipse=none);
	var Pressure;
	with AQI;
run;

proc reg data=WORK.FINALDATA;
model AQI=Pressure;
run;
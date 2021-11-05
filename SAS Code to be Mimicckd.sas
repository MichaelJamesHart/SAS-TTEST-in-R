proc import datafile="H:\Fall 2019\Biostatistical Computing\Exercises and Examples\HomeSales.txt"
	out=ichomes
	dbms=TAB
	replace;
run;

data ichomes;
	set ichomes;
	bsmtY = (bsmt in ("1/2", "3/4", "Full"));
run;

proc freq data=ichomes;
	table bsmtY;
run;

proc ttest data=ichomes plots=(summary interval) ci=none;
   class bsmtY;
   var sale_amount;
run;

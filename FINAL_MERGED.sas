data FINAL_MERGED;
	set WORK.H2015MYCSV WORK.H2016MYCSV WORK.H2017MYCSV WORK.H2018MYCSV WORK.H2019MYCSV WORK.H2020MYCSV;
	if QC_Name = 'Missing' then delete;
	if NowCast_Conc_ = '-999' then delete;
	if AQI = '-999' then delete;
	
RUN;
DROP TABLE CommandCenter_EWS_EarlyWarningSystem;

CREATE TABLE CommandCenter_EWS_EarlyWarningSystem (
		EWS_ID	int PRIMARY KEY ,
		DSID	int,
		JobName	varchar2(30),
		JobDescription	varchar2(50),
		ExecutionStep	varchar2(30),
		TestID	int,
		TestCaseDescription	varchar2(2000),
		TestScriptActual	varchar2(2000),
		PriorResult	varchar2(255),
		MinResult	varchar2(30),
		Result	varchar2(255),
		MaxResult	varchar2(30),
		Rundate	date,
		LastJobRunId	int,
		TestStatus	varchar2(30),
		Measure	varchar2(50),
		Summary	varchar2(500),
		DetailComments	varchar2(2000),
		Classification	varchar2(50),
		Severity	varchar2(10),
		RallyDefect	varchar2(10),
		ServiceNowTix	varchar2(20),
		Status	varchar2(20),
		Owner	varchar2(30),
		Resolution_PlanToClose	varchar2(2000)
);
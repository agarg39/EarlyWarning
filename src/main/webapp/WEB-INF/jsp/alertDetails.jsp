<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<form:form method="post" commandName="alertData">
		<form:hidden path="ewsId" />
		<fieldset class="form-group">
			<form:label path="dsId">DS ID</form:label>
			<form:input path="dsId" type="text" class="form-control" disabled="true"/>
			<form:errors path="dsId" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="jobName">Job Name</form:label>
			<form:input path="jobName" type="text" class="form-control" disabled="true"/>
			<form:errors path="jobName" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="jobDescription">Job Description</form:label>
			<form:input path="jobDescription" type="text" class="form-control" disabled="true" />
			<form:errors path="jobDescription" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="executionStep">Execution Step</form:label>
			<form:input path="executionStep" type="text" class="form-control" disabled="true" />
			<form:errors path="executionStep" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="testId">Test Id</form:label>
			<form:input path="testId" type="text" class="form-control"  disabled="true" />
			<form:errors path="testId" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="testCaseDescription">Test Case Description</form:label>
			<form:input path="testCaseDescription" type="text"
				class="form-control"  disabled="true"/>
			<form:errors path="testCaseDescription" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="testScriptActual">Test Script Actual</form:label>
			<form:input path="testScriptActual" type="text" class="form-control"  disabled="true"/>
			<form:errors path="testScriptActual" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="priorResult">Prior Result</form:label>
			<form:input path="priorResult" type="text" class="form-control" disabled="true"/>
			<form:errors path="priorResult" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="minResult">Min Result</form:label>
			<form:input path="minResult" type="text" class="form-control" disabled="true"/>
			<form:errors path="minResult" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="result">Result</form:label>
			<form:input path="result" type="text" class="form-control" disabled="true"/>
			<form:errors path="result" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="maxResult">Max Result</form:label>
			<form:input path="maxResult" type="text" class="form-control" disabled="true"/>
			<form:errors path="maxResult" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="rundate">RunDate</form:label>
			<form:input path="rundate" type="text" class="form-control" disabled="true"/>
			<form:errors path="rundate" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="lastJobRunId">Last Job RunId</form:label>
			<form:input path="lastJobRunId" type="text" class="form-control" disabled="true"/>
			<form:errors path="lastJobRunId" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="testStatus">Test Status</form:label>
			<form:input path="testStatus" type="text" class="form-control" disabled="true"/>
			<form:errors path="testStatus" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="measure">Measure</form:label>
			<form:input path="measure" type="text" class="form-control" disabled="true"/>
			<form:errors path="maxResult" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="summary">Summary</form:label>
			<form:input path="summary" type="text" class="form-control" disabled="true"/>
			<form:errors path="summary" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="detailComments">Detail Comments</form:label>
			<form:input path="detailComments" type="text" class="form-control" disabled="true"/>
			<form:errors path="detailComments" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="classification">Classification</form:label>			
				<select id="classification"  name="classification" class="form-control" >
					<option value="Accept">Accept</option>
					<option value="Known Issue">Known Issue</option>
					<option value="Test">Test</option>
					<option value="Defect">Defect</option>
				</select>				
			
			<form:errors path="classification" cssClass="text-warning" />
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="severity">Severity</form:label>
			<form:input path="severity" type="text" class="form-control" />
			<form:errors path="severity" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="resolutionPlanToClose">Resolution Plan To Close</form:label>
			<form:input path="resolutionPlanToClose" type="text"
				class="form-control" />
			<form:errors path="resolutionPlanToClose" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="owner">Owner</form:label>
			<form:input path="owner" type="text" class="form-control" />
			<form:errors path="owner" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="status">Status</form:label>			
			<select id="status"  name="status" class="form-control" >
					<option value="Open">Open</option>
					<option value="Pending">Pending</option>
					<option value="Resolved">Resolved</option>					
				</select>			
			<form:errors path="status" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="serviceNowTix">ServiceNowTix</form:label>
			<form:input path="serviceNowTix" type="text" class="form-control" />
			<form:errors path="serviceNowTix" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="rallyDefect">Rally Defect</form:label>
			<form:input path="rallyDefect" type="text" class="form-control" />
			<form:errors path="rallyDefect" cssClass="text-warning" />
		</fieldset>
		<button type="submit" class="btn btn-success">Update</button>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>
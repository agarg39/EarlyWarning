<%@page import="com.ews.springboot.web.model.Alerts"%>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div style="padding-left: 15; padding-right: 15;">
	<form:form id="searchForm" method="GET">
		<label style="font-size: large;">Run-Date:</label>
		<input type="date" id="runDate" name="runDate" />

		<label style="font-size: large; padding-left: 1%">Job Name:</label>

		<select name="jobName" id="jobName" class="jobName">
			<option value="">Choose Job Name</option>
			<c:forEach items="${alertDataList}" var="alertData">
				<option value="${alertData.jobName}">${alertData.jobName}</option>
			</c:forEach>
		</select>

		<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
		<script type="text/javascript">
			var code = {};
			$("select[name='jobName'] > option").each(function() {
				if (code[this.text]) {
					$(this).remove();
				} else {
					code[this.text] = this.value;
				}
			});
		</script>


		<input type="submit" id="search" value="Search"
			class="btn btn-success" />
		<input type="reset" id="reset" value="Reset" class="btn btn-warning" />
		<hr />
	</form:form>

	<label style="font-size: medium;">New Alerts</label>
	<div id="table1" style="width: 100%; height: 50%; overflow: auto;">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>EWS_ID</th>
					<th>Rundate</th>
					<th>DSID</th>
					<th>JobName</th>
					<th>TestID</th>
					<th>TestCaseDescription</th>
					<th>PriorResult</th>
					<th>MinResult</th>
					<th>Result</th>
					<th>MaxResult</th>
					<th>TestStatus</th>
					<th>Classification</th>
					<th>Measure</th>
					<th>Summary</th>
					<th>DetailComments</th>
					<th>Severity</th>
					<th>RallyDefect</th>
					<th>ServiceNowTix</th>
					<th>Status</th>
					<th>Owner</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${alertDataList}" var="alertData">
					<tr>
						<td>${alertData.ewsId}</td>
						<td><fmt:formatDate value="${alertData.rundate}"
								pattern="dd/MM/yyyy" /></td>
						<td>${alertData.dsId}</td>
						<td>${alertData.jobName}</td>
						<td>${alertData.testId}</td>
						<td>${alertData.testCaseDescription}</td>
						<td>${alertData.priorResult}</td>
						<td>${alertData.minResult}</td>
						<td>${alertData.result}</td>
						<td>${alertData.maxResult}</td>
						<td>${alertData.testStatus}</td>
						<td>${alertData.classification}</td>
						<td>${alertData.measure}</td>
						<td>${alertData.summary}</td>
						<td>${alertData.detailComments}</td>
						<td width=100px>${alertData.severity}</td>
						<td>${alertData.rallyDefect}</td>
						<td>${alertData.serviceNowTix}</td>
						<td>${alertData.status}</td>
						<td>${alertData.owner}</td>
						<td><a type="button" class="btn btn-success"
							href="/update-alert?ewsId=${alertData.ewsId}">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<hr />
	<label style="font-size: medium;">Open Issues</label>
	<div id="table2" style="width: 100%; height: 50%; overflow: auto;">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>JobName</th>
					<th>JobDescription</th>
					<th>Status</th>
					<th>Measure</th>
					<th>Summary</th>
					<th>DetailComments</th>
					<th>Owner</th>
					<th>Resolution_PlanToClose</th>
					<th>TestSteps</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${alertDataListByStatus}" var="alertData">
					<tr>
						<td>${alertData.jobName}</td>
						<td>${alertData.jobDescription}</td>
						<td><input type="text" value="${alertData.status}"></td>
						<td><input type="text" value="${alertData.measure}"></td>
						<td><input type="text" value="${alertData.summary}"></td>
						<td><input type="text" value="${alertData.detailComments}"></td>
						<td><input type="text" value="${alertData.owner}"></td>
						<td><input type="text"
							value="${alertData.resolutionPlanToClose}"></td>
						<td>${alertData.executionStep}</td>
						<td><a type="button" class="btn btn-success"
							href="/update-alert?ewsId=${alertData.ewsId}">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<%@ include file="common/footer.jspf"%>

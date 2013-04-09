<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>

<head>
<title>List of Teams</title>
<link href="main.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />

</head>
<body>
	<div class="titleDiv">List of Teams</div>
	<h1>Teams</h1>
	<table width=600 align=center>
		<tr>
			<s:url id="insert" action="insert" />
			<td><s:a href="%{insert}">Click Here to Add New Team</s:a></td>
			<s:url id="index" action="index" />
			<td><s:a href="%{index}">Refresh</s:a></td>
			
		</tr>
	</table>
	<br />
	<table align=center class="borderAll">
		<tr>
			<th>ID</th>
			<th>Team Name</th>
			<th>Coach</th>
			<th>Country</th>
			<th></th>
		</tr>
		<s:iterator value="teams" status="status">
			<tr class="<s:if test="#status.even">even</s:if><s:else>odd</s:else>"
				id="row_<s:property value="id"/>">
				<td class="nowrap" ><s:property value="id" /></td>
				<td class="nowrap" ><s:textfield styleClass="noedit" value="%{teamName}" theme="simple" size="35"  /></td>
				<td class="nowrap" ><s:textfield styleClass="noedit" value="%{coachFullName}"  theme="simple" size="35"  /></td>
				<td class="nowrap" ><s:textfield styleClass="noedit" value="%{country}"  theme="simple" size="35"  /></td>
<%-- 			
				<td class="nowrap"><s:property value="id" /></td>	
				<td class="nowrap"><s:property value="teamName" /></td>
				<td class="nowrap"><s:property value="coachFullName" /></td>
				<td class="nowrap"><s:property value="country" /></td> --%>
				<td>
					<s:url id="removeUrl" action="remove">
						<s:param name="id" value="id" />
					</s:url> 
					<s:a href="%{removeUrl}" theme="xhtml" targets="teams">Remove</s:a>
						
					<s:url id="editUrl" action="edit">
						<s:param name="id" value="id" />
					</s:url> 
					<s:a href="%{editUrl}" theme="xhtml" targets="/edit">Edit</s:a>
				</td>
			</tr>
		</s:iterator>
	</table>



	<center>

		<br>
		<h1>

			<s:if test="team==null || team.id == null">
	 Add New Team
                </s:if>
			<s:else>
	 Edit Existing Team
            </s:else>
		</h1>

		<s:form>
			<table align="center" class="borderAll">
				<tr>
					<td><s:hidden name="team.id" /></td>
				</tr>
				<tr>
					<td><s:textfield id="teamName" label="Team Name"
							name="team.teamName" /></td>
				</tr>
				<tr>
					<td><s:textfield id="coachFullName" label="Coach Name"
							name="team.coachFullName" /></td>
				</tr>
				<tr>
					<td><s:textfield id="country" label="Country"
							name="team.country" /></td>
				</tr>
			</table>

			<table>
				<tr>
					<td><s:submit action="save" key="button.label.submit"
							value="Submit" cssClass="butStnd" /></td>
				<tr>
			</table>
		</s:form>

	</center>




</body>
</html>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <title>Contact Form</title>
        <link href="main.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <center>
            <div class="titleDiv">Contact Form</div>
            <p>
            <h1><s:if test="team==null || team.id == null">
	 Add New Contact
                </s:if>
                <s:else>
	 Edit Existing Contact
            </s:else></h1>

            <table width=600 align=center>
                <tr>
                    <td><a href="list">Click Here to View Employees</a></td>
                    <td><a href="j_spring_security_logout">Logout</a></td>
                </tr>
            </table>
            <table>
                <tr><td align="left" style="font:bold;color:red">
                        <s:fielderror/>
                        <s:actionerror/>
                        <s:actionmessage/></td></tr>
            </table>

            <s:form>
                <table align="center" class="borderAll">
                    <tr>
                        <td><s:hidden name="team.id"/></td>
                    </tr>
                    <tr>
                        <td><s:textfield id="teamName" label="Full Name" name="team.teamName" /></td>
                    </tr>
                    <tr>
                        <td><s:textfield id="coachFullName" label="Address" name="team.coachFullName" /></td>
                    </tr>
                    <tr>
                        <td><s:textfield id="country" label="Telp" name="team.country" /></td>
                    </tr>
                </table>

                <table>
                    <tr>
                        <td><s:submit action="save" key="button.label.submit" value="Submit"  cssClass="butStnd" /></td>
                    <tr>
                </table>
            </s:form>
        </center>
    </body>
</html>

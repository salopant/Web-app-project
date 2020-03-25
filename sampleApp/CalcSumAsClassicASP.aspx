<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalcSumAsClassicASP.aspx.cs" Inherits="sampleApp.CalcSumAsClassicASP" %>

<!DOCTYPE html>

<%
    double result = 0.0;
    if (Request.Form.Count > 0)
        result = Convert.ToDouble(Request.Form["Text1"]) + Convert.ToDouble(Request.Form["Text2"]);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post" action="CalcSumAsClassicASP.aspx">
        <%String[] municipalities = {"Lahti","Helsinki","Tampere","Turku","Kuopio" };
           
            
            %>
        <div>
            <select id ="Select1" name="Select1">
                <%for (int i = 0; i < municipalities.Length; i++)
                    {
                        Response.Write("<option value=\"" + municipalities[i] + "\">" + municipalities[i] + "</option>");
                    }
                    %>
            </select>
            <input id ="Text1" name="Text1" value="<%=Convert.ToDouble(Request.Form["Text1"]) %>" type="text" />
            <input id ="Button1" type="submit" value="+" />
            <input id ="Text2" name="Text2" value="<%=Convert.ToDouble(Request.Form["Text2"]) %>" type="text" />
        </div>
    </form>
        <input id ="Text3" name="Text3" value="<%=23%>" type="text" />
</body>
</html>

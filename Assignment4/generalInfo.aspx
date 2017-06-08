<%@ Page Language="C#" AutoEventWireup="true" CodeFile="generalInfo.aspx.cs" Inherits="generalInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
     
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Welcome to Community Assist</h1>
        <h3>Services we provide</h3>

        <p>Community Assist is a charity organization that offers one-time loans to community members who find themselves in temporary need. These loans are grouped around predefined services such as Food, Rent, Medical, Education, etc. <br />
            There are one time and life time limits on the amounts for each of these Services. The goal of the organization is not only to help a client through a hard time, but to help each client find other, more sustainable, means of meeting their needs.<br />
             
Community Assist is funded through the generosity of donors. Donors can contribute directly to the organization. Each loan is reviewed to insure its authenticity. Donations are not applied to a specific service or client, but are put into a general fund and redistributed as grants.<br />
             A portion of the donations is used to support the organization its employees. It is the intent of Community Assist that the amount going to charity should always be at least 75% of total donations.
Community Assist is run by a small number of employees. Some are paid and some are volunteer. Employees Assist in data entry, taking donations and processing grants. Each grant request is reviewed by at least one employee. A request for a grant can be approved, approved, but at a lesser amount, or denied.</p>
       
        
        <table>
        <tr>
            <td>
         <asp:Button ID="DonateButton" runat="server" Text="Donate" OnClick="DonateButton_Click" />
                </td>
            <td>
                <asp:Button ID="GrantButton" runat="server" Text="Apply for Grant" OnClick="GrantButton_Click" /></td>
            </tr>
        </table>
    </div>


    </form>
</body>
</html>

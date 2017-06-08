<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonationPage.aspx.cs" Inherits="DonationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <h1>Please make a donation</h1>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" ></asp:GridView>
        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
        <table>
            <tr>
                <td>Enter amount of donation</td>
                <td>
                    <asp:TextBox ID="DonationTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Donate" OnClick="SubmitButton_Click" /></td>
            </tr>


        </table>

    </div>
    </form>
</body>
</html>

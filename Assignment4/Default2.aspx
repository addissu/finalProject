<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Log in</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Please Log in</h1>
    <div>
    <table>
        <tr>
            <td>User Name</td>
            <td>
                <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" /></td>
            <td>
                <asp:Label ID="ResultLabel1" runat="server" Text=""></asp:Label>
                </td>
        </tr>


    </table>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Register.aspx">Register</asp:LinkButton>

    </div>
    </form>
</body>
</html>

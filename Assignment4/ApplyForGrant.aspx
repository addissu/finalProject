<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyForGrant.aspx.cs" Inherits="ApplyForGrant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Apply for grant</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Apply for Grant</h1>
        <br />
        <br />
        <h3>Please fill out the form below</h3>

        <table>
            <tr>
                <td>Grant Request Date</td>
                <td>
                    <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox></td>
                <td>
                    </td>
            </tr>

             <tr>
                <td>Grant Amount</td>
                <td>
                    <asp:TextBox ID="AmountTextBox" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>

             <tr>
                <td>Explain Reason For Grant</td>
                <td>
                    <asp:TextBox ID="ExplainTextBox" runat="server"></asp:TextBox></td>
                 <td>
                    
                    </td>
            </tr>
            <tr>
          
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Apply" OnClick="SubmitButton_Click" /></td>
                
                    <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                   </td>
                
            
            </tr>


        </table>
    
    </div>
    </form>
</body>
</html>

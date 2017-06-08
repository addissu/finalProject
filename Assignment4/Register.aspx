<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Register</title>
</head>
<body>
    <h1>Please Register</h1>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="User Name is required" ControlToValidate="UserTextBox"></asp:RequiredFieldValidator></td>

            </tr>
               <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                    &nbsp
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                    </td>

            </tr>
               <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator></td>

            </tr>
               <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="ConfirmPasswordTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Don't Match" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ></asp:CompareValidator></td>

            </tr>
               <tr>
                <td>Apartment Number</td>
                <td>
                    <asp:TextBox ID="ApartmentNumberTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>Street Name</td>
                <td>
                    <asp:TextBox ID="StreetNameTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>City</td>
                <td>
                    <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>State</td>
                <td>
                    <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>Zipcode</td>
                <td>
                    <asp:TextBox ID="ZipcodeTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>Home Phone</td>
                <td>
                    <asp:TextBox ID="HomePhoneTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>Work Phone</td>
                <td>
                    <asp:TextBox ID="WorkPhoneTextBox" runat="server"></asp:TextBox></td>
                <td></td>

            </tr>
               <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                    </td>
                <td></td>

            </tr>



        </table>
    
    </div>
    </form>
</body>
</html>

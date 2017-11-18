<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ClassExercise3.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 281px;
        }
        .auto-style3 {
            width: 264px;
        }
        .auto-style4 {
            width: 286px;
        }
        .auto-style5 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="LengthType" runat="server" AutoPostBack="True" Width="185px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">Length in meters</td>
                <td class="auto-style4">
                    <asp:TextBox ID="LengthTB" runat="server" Width="242px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="LengthRequired" runat="server" ControlToValidate="LengthTB" CssClass="auto-style5" ErrorMessage="Length is Required."></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RangeValidator ID="LengthRange" runat="server" ControlToValidate="LengthTB" CssClass="auto-style5" ErrorMessage="Length should be a positive integer." MaximumValue="100000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Width in meters </td>
                <td class="auto-style4">
                    <asp:TextBox ID="WidthTB" runat="server" Width="242px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="WidthRequired" runat="server" ControlToValidate="WidthTB" CssClass="auto-style5" ErrorMessage="Width is Required."></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RangeValidator ID="WidthRange" runat="server" ControlToValidate="WidthTB" CssClass="auto-style5" ErrorMessage="Width should be a positive integer." MaximumValue="1000000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="CalculateButton" runat="server" OnClick="CalculateButton_Click" Text="Calculate" Width="169px" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="CalculationLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table style="width: 100%">
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; text-align: center">
                <br />
                <br />
                <span style="font-size: large; color: #003366"><strong>
                <br />
                Admin Login</strong></span></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px; font-weight: 700; text-align: right; color: #333333; height: 26px;">
                Username</td>
            <td style="width: 277px; height: 26px;">
                <asp:TextBox ID="TB1" placeholder="Username" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TB1" ErrorMessage="Please enter Username" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                
            </td>
            <td style="height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px; text-align: right; color: #333333; height: 26px;">
                <strong>Password</strong></td>
            <td style="width: 277px; height: 26px;">
                <asp:TextBox ID="TBpassword" placeholder="Password" runat="server" TextMode="Password" Width="279px"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TBpassword" ErrorMessage="Please enter your password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 58px; height: 22px;">
                </td>
            <td style="width: 277px; height: 22px;">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px; height: 30px;">
                </td>
            <td style="width: 277px; height: 30px;">
                <asp:Button ID="login" runat="server" onclick="login_Click" 
                    style="margin-left: 109px" Text="Login" Width="67px" />
            &nbsp;
            </td>
            <td style="height: 30px">
                </td>
            <td style="height: 30px">
                </td>
        </tr>
        <tr>
            <td style="width: 58px; height: 22px;">
                </td>
            <td style="width: 277px; height: 22px;">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px; height: 22px;">
                </td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center; height: 22px;">
                </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                </td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 58px; height: 22px;">
                </td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center; height: 22px;">
                </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
            </td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px; font-size: small; color: #333333; text-align: center;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 277px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


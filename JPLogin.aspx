<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JPLogin.aspx.cs" Inherits="JPLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px; text-align: center; font-size: medium; color: #003366;">
                <strong>
                <br />
                <br />
                <br />
                Company Login</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                <asp:TextBox placeholder="Company Name" ID="TBname" runat="server" Width="276px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TBname" Display="Dynamic" 
                    ErrorMessage="Please enter your Company Name" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                <asp:TextBox placeholder="Password" ID="TBpassword" runat="server" 
                    Width="276px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TBpassword" Display="Dynamic" 
                    ErrorMessage="Please enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                <asp:Button ID="Button1" runat="server" style="margin-left: 113px" 
                    Text="Login" onclick="Button1_Click" Height="28px" Width="66px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Images/Business-people-©-Kurhan-31326063.jpg" 
                    style="z-index: 1; left: 672px; top: 168px; position: absolute; height: 132px; width: 341px" />
            </td>
        </tr>
        <tr>
            <td style="width: 167px; text-align: center;">
                &nbsp;</td>
            <td style="width: 272px; text-align: center;">
                <span style="color: #333333">Not a member?</span>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/JPReg.aspx"> Register Here.</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 167px">
                &nbsp;</td>
            <td style="width: 272px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
 
</asp:Content>


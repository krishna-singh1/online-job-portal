<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JSLogin.aspx.cs" Inherits="JSLogin" %>

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
                Job Seeker Login</strong></span></td>
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
        <tr>
            <td style="width: 58px; font-weight: 700; text-align: right; color: #333333; height: 26px;">
                &nbsp;&nbsp;
                Email</td>
            <td style="width: 277px; height: 26px;">
                <asp:TextBox ID="TBemail" placeholder="Email" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TBemail" ErrorMessage="Please enter your email" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TBemail" ErrorMessage="Please enter a valid email" 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Images/Job_seekers_banner.jpg" 
                    
                    style="z-index: 1; left: 644px; top: 176px; position: absolute; height: 107px; width: 270px" />
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
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" 
                    Visible="False"></asp:Label>
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
                <asp:Button ID="Blogin" runat="server" onclick="Blogin_Click" 
                    style="margin-left: 109px" Text="Login" Width="67px" />
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
                <strong>Not a member? </strong>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/JSReg.aspx">Register Here.</asp:HyperLink>
            </td>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JPReg.aspx.cs" Inherits="JPReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="font-size: large; width: 286px; text-align: center;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp; 
                Company Registration</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px; text-align: right;">
                <asp:Label ID="Label3" runat="server" CssClass="style2" 
                    style="font-weight: bold" Text="Company Name"></asp:Label>
            </td>
            <td style="width: 286px">
                <asp:TextBox placeholder="Company Name" ID="TBname" runat="server" 
                    Width="362px" style="margin-left: 41px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TBname" Display="Dynamic" 
                    ErrorMessage="Please enter the company name" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px; text-align: right;">
                <asp:Label ID="Label4" runat="server" CssClass="style2" 
                    style="font-weight: bold" Text="Password"></asp:Label>
            </td>
            <td style="width: 286px">
                <asp:TextBox placeholder="Password" ID="TBpassword" runat="server" 
                    Width="362px" TextMode="Password" style="margin-left: 41px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TBpassword" Display="Dynamic" 
                    ErrorMessage="Please enter a password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px; text-align: right;">
                <asp:Label ID="Label5" runat="server" CssClass="style2" 
                    style="font-weight: bold" Text="Confirm Password"></asp:Label>
            </td>
            <td style="width: 286px">
                <asp:TextBox placeholder="Confirm Password" ID="TBconpass" runat="server" 
                    Width="362px" TextMode="Password" style="margin-left: 44px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TBconpass" Display="Dynamic" 
                    ErrorMessage="Retype your password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TBpassword" ControlToValidate="TBconpass" Display="Dynamic" 
                    ErrorMessage="Password mismatch" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px; text-align: right;">
                <asp:Label ID="Label6" runat="server" CssClass="style2" 
                    style="font-weight: bold" Text="City"></asp:Label>
            </td>
            <td style="width: 286px">
                <asp:TextBox placeholder="Headquarter" ID="TBhq" runat="server" Width="362px" 
                    style="margin-left: 45px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TBhq" Display="Dynamic" ErrorMessage="Please enter the city" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px; text-align: right; height: 40px;">
                <asp:Label ID="Label7" runat="server" CssClass="style2" 
                    style="font-weight: bold" Text="Contact No."></asp:Label>
            </td>
            <td style="width: 286px; height: 40px;">
                <asp:TextBox placeholder="Phone number" ID="TBphno" runat="server" 
                    Width="362px" style="margin-left: 45px"></asp:TextBox>
            </td>
            <td style="height: 40px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TBphno" Display="Dynamic" 
                    ErrorMessage="Please enter a phone number" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TBphno" Display="Dynamic" 
                    ErrorMessage="Please enter a valid phone number" ForeColor="Red" 
                    SetFocusOnError="True" 
                    ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cprofile]"></asp:SqlDataSource>
                <asp:Button ID="Bregister" runat="server" style="margin-left: 156px" 
                    Text="Register" onclick="Bregister_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLoginJP.master" AutoEventWireup="true" CodeFile="JPProfile.aspx.cs" Inherits="RecruiterProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
<br />
</p>
    
    <table style="width: 100%">
        <tr>
            <td style="width: 169px; height: 22px;">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #003366" 
                    Text="Welcome, "></asp:Label>
            </td>
            <td style="width: 247px; height: 22px;">
                </td>
            <td style="height: 22px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/JPPostedJobs.aspx">View posted jobs</asp:HyperLink>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 169px; height: 23px;">
                &nbsp;</td>
            <td style="width: 247px; height: 23px;">
                &nbsp;</td>
            <td style="height: 23px">
                </td>
        </tr>
        <tr>
            <td style="width: 169px; height: 23px;">
                </td>
            <td style="width: 247px; height: 23px;">
                </td>
            <td style="height: 23px">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/JPShow.aspx">View all Resume</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td style="width: 169px; height: 23px;">
                </td>
            <td style="width: 247px; text-align: center; color: #003366; height: 23px;">
                <strong>Fill up the following to post a job</strong></td>
            <td style="height: 23px">
                </td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px; text-align: right;">
                <asp:Label ID="Label4" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Job title"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TBjtitle" placeholder="Job Title" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    Display="Dynamic" ErrorMessage="Please enter a job title" ForeColor="Red" 
                    ControlToValidate="TBjtitle"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px; text-align: right;">
                <asp:Label ID="Label5" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Salary"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TBsal" placeholder="Salary" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    Display="Dynamic" ErrorMessage="Please enter the salary" ForeColor="Red" 
                    ControlToValidate="TBsal"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px; text-align: right;">
                <asp:Label ID="Label6" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Job Location"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TBjloc" placeholder="Job Location" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    Display="Dynamic" ErrorMessage="Please enter the job location" 
                    ForeColor="Red" ControlToValidate="TBjloc"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px; text-align: right;">
                <asp:Label ID="Label7" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Experience Required"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TBexp" placeholder="Experience" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    Display="Dynamic" ErrorMessage="Please enter the experience required" 
                    ForeColor="Red" ControlToValidate="TBexp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px; text-align: right;">
                <asp:Label ID="Label8" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Contact No."></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TBphno" placeholder="Phone Number" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    Display="Dynamic" ErrorMessage="Please enter the phone number" 
                    ForeColor="Red" ControlToValidate="TBphno"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px; text-align: right;">
                <asp:Label ID="Label9" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Field(optional)"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TBfield" placeholder="Field" runat="server" Width="242px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px; height: 23px; text-align: right;">
                <asp:Label ID="Label10" runat="server" 
                    style="font-weight: bold; color: #333333" Text="Skills(optional)"></asp:Label>
                </td>
            <td style="width: 247px; height: 23px;">
                <asp:TextBox ID="TBskills" placeholder="Skills" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td style="height: 23px">
                </td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Jobs]"></asp:SqlDataSource>
            </td>
            <td style="width: 247px">
                <asp:Button ID="Button1" runat="server" style="margin-left: 90px" 
                    Text="Post Job" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
 
</asp:Content>


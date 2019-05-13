<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="JSProfile.aspx.cs" Inherits="JSProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label1" runat="server" Text="Welcome, " 
                    
                    
                    style="z-index: 1; left: 23px; top: 165px; position: absolute; font-weight: 700; color: #003366;"></asp:Label>
            </td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AllJobs.aspx">View all jobs</asp:HyperLink>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px; text-align: center; color: #003366;">
                <b>OR,</b></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px; height: 40px;">
                </td>
            <td style="width: 241px; text-align: center; height: 40px; color: #003366;">
                <b>Fill up the following details to search specifically</b></td>
            <td style="height: 40px">
                </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Upload Resume"></asp:Label>
                </td>
            <td style="width: 241px; text-align: center">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="246px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Upload" />
&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px; text-align: right;">
                <asp:Label ID="Label2" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Company name"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TBcomname" placeholder="Company Name" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TBcomname" Display="Dynamic" 
                    ErrorMessage="Please enter a company name" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px; text-align: right;">
                <asp:Label ID="Label3" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Post"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TBjobtitle" placeholder="Post" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TBjobtitle" Display="Dynamic" 
                    ErrorMessage="Please enter a post" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px; text-align: right;">
                <asp:Label ID="Label4" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Salary"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TBsal" placeholder="Salary" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TBsal" Display="Dynamic" 
                    ErrorMessage="Please enter the salary" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px; text-align: right;">
                <asp:Label ID="Label5" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Job location"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TBjobloc" placeholder="Job Location" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TBjobloc" Display="Dynamic" 
                    ErrorMessage="Please enter the job location" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px; text-align: right;">
                <asp:Label ID="Label6" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Minimum experience required"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TBexp" placeholder="Experience required" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TBexp" Display="Dynamic" ErrorMessage="Experience required" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px; height: 26px; text-align: right;">
                <asp:Label ID="Label7" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Field"></asp:Label>
                </td>
            <td style="width: 241px; height: 26px;">
                <asp:TextBox ID="TBfield" placeholder="Field" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TBfield" ErrorMessage="Field required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 32px;">
                </td>
            <td style="width: 241px; height: 32px;">
                </td>
            <td style="height: 32px">
                </td>
        </tr>
        <tr>
            <td style="width: 242px; text-align: right;">
                <asp:Label ID="Label8" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Skills"></asp:Label>
            </td>
            <td style="width: 241px">
                <asp:TextBox ID="TBskills" placeholder="Skills" runat="server" Width="241px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TBskills" ErrorMessage="Please enter atleast one skill." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 23px;">
                </td>
            <td style="width: 241px; height: 23px;">
                </td>
            <td style="height: 23px">
                </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 23px;">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 241px; height: 23px;">
                &nbsp;</td>
            <td style="height: 23px">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                <asp:Button ID="Button2" runat="server" style="margin-left: 58px; text-align: right;" 
                    Text="Search Jobs" onclick="Button2_Click" Width="109px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                &nbsp;</td>
            <td style="width: 241px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JSReg.aspx.cs" Inherits="JSReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="text-align: left; font-size: xx-large; height: 44px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Seeker Registration<br />
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; height: 26px; text-align: right;">
                <asp:Label ID="Label3" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Full Name"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:TextBox placeholder="Name" ID="TBname" runat="server" Width="362px" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
            <td style="width: 642px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TBname" Display="Dynamic" 
                    ErrorMessage="Please enter your name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right;">
                <asp:Label ID="Label4" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Email Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox placeholder="Email ID" ID="TBemail" runat="server" Width="362px"></asp:TextBox>
            </td>
            <td style="width: 642px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TBemail" Display="Dynamic" 
                    ErrorMessage="Please enter your email" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TBemail" Display="Dynamic" 
                    ErrorMessage="Please enter a valid email" ForeColor="Red" 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right;">
                <asp:Label ID="Label5" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox placeholder="Password" ID="TBpassword" runat="server" 
                    Width="362px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 642px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TBpassword" Display="Dynamic" 
                    ErrorMessage="Please enter a password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right;">
                <asp:Label ID="Label6" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox placeholder="Confirm Password" ID="TBconpass" runat="server" 
                    Width="362px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 642px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TBconpass" Display="Dynamic" 
                    ErrorMessage="Retype your password " ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TBpassword" ControlToValidate="TBconpass" Display="Dynamic" 
                    ErrorMessage="Password mismatch" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; height: 26px; text-align: right;">
                <asp:Label ID="Label7" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Contact No."></asp:Label>
                </td>
            <td style="height: 26px;">
                <asp:TextBox placeholder="Mobile Number" ID="TBphno" runat="server" Width="362px"></asp:TextBox>
            </td>
            <td style="height: 26px; width: 642px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TBphno" Display="Dynamic" 
                    ErrorMessage="Please enter a mobile number " ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TBphno" Display="Dynamic" 
                    ErrorMessage="Please enter a valid phone number" ForeColor="Red" 
                    ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right; height: 29px;">
                <asp:Label ID="Label8" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Date Of Birth"></asp:Label>
            </td>
            <td style="height: 29px">
                <asp:TextBox placeholder="Date of birth (dd/mm/yyyy)" ID="TBdob" runat="server" 
                    Width="362px"></asp:TextBox>
            </td>
            <td style="width: 642px; height: 29px;">
                &nbsp;
                <br />
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TBdob" Display="Dynamic" 
                    ErrorMessage="Please enter your date of birth" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right;">
                <asp:Label ID="Label9" runat="server" style="font-weight: bold; color: #333333" 
                    Text="Current City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDcity" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 642px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DDcity" Display="Dynamic" 
                    ErrorMessage="Please select a city" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px; height: 22px;">
                </td>
            <td style="height: 22px">
                </td>
            <td style="width: 642px; height: 22px;">
                </td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right;">
                <asp:Label ID="Label10" runat="server" 
                    style="font-weight: bold; color: #333333" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDgender" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 642px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DDgender" Display="Dynamic" 
                    ErrorMessage="Please select your gender" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right;">
                <asp:Label ID="Label11" runat="server" 
                    style="font-weight: bold; color: #333333" Text="Degree"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDdegree" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>PhD</asp:ListItem>
                    <asp:ListItem>M.Tech.</asp:ListItem>
                    <asp:ListItem>M.E.</asp:ListItem>
                    <asp:ListItem>M.Sc.</asp:ListItem>
                    <asp:ListItem>M.Com.</asp:ListItem>
                    <asp:ListItem>M.A.</asp:ListItem>
                    <asp:ListItem>B.Tech.</asp:ListItem>
                    <asp:ListItem>B.E.</asp:ListItem>
                    <asp:ListItem>B.Sc.</asp:ListItem>
                    <asp:ListItem>B.Com.</asp:ListItem>
                    <asp:ListItem>B.A.</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 642px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="DDdegree" Display="Dynamic" 
                    ErrorMessage="Please select your degree" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; text-align: right;">
                <asp:Label ID="Label12" runat="server" 
                    style="font-weight: bold; color: #333333" Text="Field"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDField" runat="server">
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Electronics and Comm.</asp:ListItem>
                    <asp:ListItem>Electrical and electronics</asp:ListItem>
                    <asp:ListItem>Information Technology</asp:ListItem>
                    <asp:ListItem>Instrumentation</asp:ListItem>
                    <asp:ListItem>Marine</asp:ListItem>
                    <asp:ListItem>Aeronautical </asp:ListItem>
                    <asp:ListItem>Automobile</asp:ListItem>
                    <asp:ListItem>Physics</asp:ListItem>
                    <asp:ListItem>Chemistry</asp:ListItem>
                    <asp:ListItem>Botany</asp:ListItem>
                    <asp:ListItem>Zoology</asp:ListItem>
                    <asp:ListItem>Pshycology</asp:ListItem>
                    <asp:ListItem>Microbiology</asp:ListItem>
                    <asp:ListItem>Statistics</asp:ListItem>
                    <asp:ListItem>Mathematics</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Bengali</asp:ListItem>
                    <asp:ListItem>Architecture</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Dentist</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 642px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="DDField" ErrorMessage="Please select your field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 642px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; height: 26px; text-align: right;">
                <asp:Label ID="Label13" runat="server" 
                    style="font-weight: bold; color: #333333" Text="Skills"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:TextBox ID="TBSkills" placeholder="Skills" runat="server" Width="357px"></asp:TextBox>
            </td>
            <td style="width: 642px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TBSkills" ErrorMessage="Please enter atleast one key skill" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px; height: 22px;">
                </td>
            <td style="height: 22px">
                </td>
            <td style="width: 642px; height: 22px;">
                </td>
        </tr>
        <tr>
            <td style="width: 804px; height: 22px; text-align: right;">
                <asp:Label ID="Label14" runat="server" 
                    style="font-weight: bold; color: #333333" Text="Job Experience"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox placeholder="Job experience in years (0 for fresher)" ID="TBexp" 
                    runat="server" Width="357px"></asp:TextBox>
            </td>
            <td style="width: 642px; height: 22px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TBexp" Display="Dynamic" 
                    ErrorMessage="Please enter your job experience " ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TBexp" ErrorMessage="Please enter a numeric value" 
                    ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 804px; height: 22px;">
                </td>
            <td style="height: 22px">
                </td>
            <td style="width: 642px; height: 22px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; height: 24px;">
                </td>
            <td style="height: 24px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Uprofile]"></asp:SqlDataSource>
                <asp:Button ID="Bregister" runat="server" style="margin-left: 165px" 
                    Text="Register" onclick="Bregister_Click" Height="29px" Width="89px" />
            </td>
            <td style="width: 642px; height: 24px;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/job.jpg" 
                    style="z-index: 1; left: 41px; top: 102px; position: absolute; height: 179px; width: 347px; right: 408px" />
                </td>
        </tr>
        <tr>
            <td style="width: 804px; height: 22px;">
                &nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
            <td style="width: 642px; height: 22px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 804px; height: 22px;">
                &nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
            <td style="width: 642px; height: 22px;">
                &nbsp;</td>
        </tr>
        </table>
    
    </table>
    
</asp:Content>


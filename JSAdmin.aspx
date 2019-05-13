<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JSAdmin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="Name">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="password" HeaderText="password" 
            SortExpression="password" />
        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="gender" HeaderText="gender" 
            SortExpression="gender" />
        <asp:BoundField DataField="degree" HeaderText="degree" 
            SortExpression="degree" />
        <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
        <asp:BoundField DataField="field" HeaderText="field" SortExpression="field" />
        <asp:BoundField DataField="skills" HeaderText="skills" 
            SortExpression="skills" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [Uprofile]"></asp:SqlDataSource>

</asp:Content>


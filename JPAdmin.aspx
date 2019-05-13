<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JPAdmin.aspx.cs" Inherits="JPAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" DataKeyNames="cname">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" ReadOnly="True" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="hq" HeaderText="hq" SortExpression="hq" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Cprofile]"></asp:SqlDataSource>
    
</asp:Content>


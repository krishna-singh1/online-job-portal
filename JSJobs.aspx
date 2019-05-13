<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="JSJobs.aspx.cs" Inherits="JSJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
<br />
</p>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" GridLines="Horizontal" DataKeyNames="cname">
        <Columns>
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" ReadOnly="True" />
            <asp:BoundField DataField="jtitle" HeaderText="jtitle" 
                SortExpression="jtitle" />
            <asp:BoundField DataField="sal" HeaderText="sal" SortExpression="sal" />
            <asp:BoundField DataField="jloc" HeaderText="jloc" SortExpression="jloc" />
            <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
            <asp:BoundField DataField="field" HeaderText="field" SortExpression="field" />
            <asp:BoundField DataField="skills" HeaderText="skills" 
                SortExpression="skills" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [Jobs]">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


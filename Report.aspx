<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="templatemo_post_top">
    <h1>Area Data</h1>
    </div>
   <div class="templatemo_post_mid">
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
           <table style="width: 100%;">
           <tr>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;
                   </td>
               <td>
                   &nbsp;
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [CustomerStatistic]"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [TypeData]"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [AreaData]"></asp:SqlDataSource>
               </td>
               <td>
                   &nbsp;</td>
           </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: center">
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                           AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                           DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                           GridLines="None" Width="100%">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" 
                                   ReadOnly="True" SortExpression="CustomerID" />
                               <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" 
                                   SortExpression="CustomerName" />
                               <asp:BoundField DataField="total" HeaderText="total" ReadOnly="True" 
                                   SortExpression="total" />
                               <asp:BoundField DataField="tank" HeaderText="tank" ReadOnly="True" 
                                   SortExpression="tank" />
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
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                           AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                           DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="TypeID" HeaderText="Type ID" 
                                   SortExpression="TypeID" />
                               <asp:BoundField DataField="TypeName" HeaderText="Type Name" 
                                   SortExpression="TypeName" />
                               <asp:BoundField DataField="total" HeaderText="total" ReadOnly="True" 
                                   SortExpression="total" />
                               <asp:BoundField DataField="tank" HeaderText="tank" ReadOnly="True" 
                                   SortExpression="tank" />
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
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                           AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                           DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="100%">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="AreaID" HeaderText="Area ID" 
                                   SortExpression="AreaID" />
                               <asp:BoundField DataField="AreaName" HeaderText="Area Name" 
                                   SortExpression="AreaName" />
                               <asp:BoundField DataField="total" HeaderText="total" ReadOnly="True" 
                                   SortExpression="total" />
                               <asp:BoundField DataField="tank" HeaderText="tank" ReadOnly="True" 
                                   SortExpression="tank" />
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
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
       </table>             	                        
                 
       </ContentTemplate>
       </asp:UpdatePanel>
                        
     <div class="clear"></div>
                        
   </div>

</asp:Content>


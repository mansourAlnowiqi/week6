<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="TankType.aspx.cs" Inherits="TankType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="templatemo_post_top">
    <h1>Tank Type</h1>
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
                       SelectCommand="SELECT * FROM [TankType]"></asp:SqlDataSource>
               </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   &nbsp;
                   </td>
               <td style="text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Type ID"></asp:Label>
               </td>
               <td style="text-align: left">
                <asp:TextBox ID="tbid" runat="server" ReadOnly="True"></asp:TextBox>
               </td>
               <td style="text-align: left">
                   &nbsp;</td>
           </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label3" runat="server" Text="Type Name"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbname" runat="server" Width="400px"></asp:TextBox>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       <asp:Label ID="lblerr" runat="server" ></asp:Label>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       <table style="width:100%;">
                           <tr>
                               <td style="text-align: center">
                                   <asp:Button ID="btnclear" runat="server" CssClass="button" Text="Reset" 
                                       onclick="btnclear_Click" />
                               </td>
                               <td style="text-align: center">
                                   <asp:Button ID="btnadd" runat="server" CssClass="button" Text="Add" 
                                       onclick="btnadd_Click" />
                               </td>
                               <td style="text-align: center">
                                   <asp:Button ID="btnupdate" runat="server" CssClass="button" Text="Update" 
                                       onclick="btnupdate_Click" />
                               </td>
                               <td style="text-align: center">
                                   <asp:Button ID="btndelete" runat="server" CssClass="button" Text="Delete" 
                                       onclick="btndelete_Click" />
                               </td>
                           </tr>
                       </table>
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
                   <td colspan="2" style="text-align: center">
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                           AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                           DataKeyNames="TypeID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                           GridLines="None" Width="100%" 
                           onselectedindexchanged="GridView1_SelectedIndexChanged">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="TypeID" HeaderText="Type ID" InsertVisible="False" 
                                   ReadOnly="True" SortExpression="TypeID" />
                               <asp:BoundField DataField="TypeName" HeaderText="Type Name" 
                                   SortExpression="TypeName" />
                               <asp:CommandField SelectText="Show" ShowSelectButton="True" />
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


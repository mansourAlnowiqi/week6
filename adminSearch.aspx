<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="adminSearch.aspx.cs" Inherits="adminSearch" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="templatemo_post_top">
    <h1>Search Tank </h1>
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
                   <asp:Label ID="lblid" runat="server" style="display:none"></asp:Label>
                   </td>
               <td>
                   &nbsp;
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       
                       
                       
                       
                       
                       SelectCommand="SELECT [SchID], [schDate], [TypeName], [AreaName], [OrderID], [OrderDate], [CustomerName], [Phone], [State], [IntervalName] FROM [CustomerOrderData]">
                   </asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT [AreaID], [AreaName] FROM [Area]"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [TankType]"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [Interval]"></asp:SqlDataSource>
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
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbdate" runat="server" Width="200px"></asp:TextBox>
                       <asp:CalendarExtender ID="tbdate_CalendarExtender" runat="server" 
                           Enabled="True" Format="MM/dd/yyyy" TargetControlID="tbdate">
                       </asp:CalendarExtender>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:CheckBox ID="chka" runat="server" CssClass="lbl" Text="Area" />
                   </td>
                   <td style="text-align: left">
                       <asp:DropDownList ID="cmbarea" runat="server" DataSourceID="SqlDataSource2" 
                           DataTextField="AreaName" DataValueField="AreaID" Width="400px">
                       </asp:DropDownList>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:CheckBox ID="chkt" runat="server" CssClass="lbl" Text="Tank Type" />
                   </td>
                   <td style="text-align: left">
                       <asp:DropDownList ID="cmbtype" runat="server" DataSourceID="SqlDataSource3" 
                           DataTextField="TypeName" DataValueField="TypeID" Width="400px">
                       </asp:DropDownList>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:CheckBox ID="chki" runat="server" CssClass="lbl" Text="Interval" />
                   </td>
                   <td style="text-align: left">
                       <asp:DropDownList ID="cmbi" runat="server" DataSourceID="SqlDataSource4" 
                           DataTextField="IntervalName" DataValueField="IntervalID" Width="400px">
                       </asp:DropDownList>
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
                                   <asp:Button ID="btnSearch" runat="server" CssClass="button" Text="Saerch" 
                                       onclick="btnSearch_Click" />
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
                           DataKeyNames="SchID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                           GridLines="None" Width="100%" 
                           onselectedindexchanged="GridView1_SelectedIndexChanged" 
                           onrowcommand="GridView1_RowCommand">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="SchID" HeaderText="Scheule ID" 
                                   ReadOnly="True" SortExpression="SchID" />
                               <asp:TemplateField HeaderText="Date" SortExpression="schDate">
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("schDate","{0:MM/dd/yyyy}") %>'></asp:TextBox>
                                   </EditItemTemplate>
                                   <ItemTemplate>
                                       <asp:Label ID="Label2" runat="server" Text='<%# Bind("schDate","{0:MM/dd/yyyy}") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                               <asp:BoundField DataField="TypeName" HeaderText="Type Name" 
                                   SortExpression="TypeName" />
                               <asp:BoundField DataField="AreaName" HeaderText="Area Name" 
                                   SortExpression="AreaName" />
                               <asp:BoundField DataField="IntervalName" HeaderText="Interval Name" 
                                   SortExpression="IntervalName" />
                               <asp:BoundField DataField="OrderID" HeaderText="Order ID" 
                                   SortExpression="OrderID" />
                               <asp:TemplateField HeaderText="Order Date" SortExpression="OrderDate">
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OrderDate","{0:MM/dd/yyyy}") %>'></asp:TextBox>
                                   </EditItemTemplate>
                                   <ItemTemplate>
                                       <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderDate","{0:MM/dd/yyyy}") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                               <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" 
                                   SortExpression="CustomerName" />
                               <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                               <asp:BoundField DataField="State" HeaderText="State" ReadOnly="True" 
                                   SortExpression="State" />
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


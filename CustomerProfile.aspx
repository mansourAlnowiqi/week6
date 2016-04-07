<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="CustomerProfile.aspx.cs" Inherits="CustomerProfile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="/maps/documentation/javascript/examples/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    var center = new google.maps.LatLng(21.494922, 39.251575);
    var postion = new google.maps.LatLng(21.494922, 39.251575);
    var marker;
    var map;
    var markersArray = [];


    function setup() {
        var n = document.getElementById('ContentPlaceHolder1_tblat').value;
        var e = document.getElementById('ContentPlaceHolder1_tblan').value;
        var data = document.getElementById('ContentPlaceHolder1_tbname').value;
        if (n != "" && e != "") {
            postion = new google.maps.LatLng(n, e);
            center = new google.maps.LatLng(n, e);
        }
        var mapOptions = {
            zoom: 15,
            mapTypeId: google.maps.MapTypeId.HYBRID,
            center: center
        };

        map = new google.maps.Map(document.getElementById("map"),
            mapOptions);

        google.maps.event.addListener(map, 'click', function (event) {

            var info = event.latLng.toString();
            info = info.substr(1, info.length - 2);
            var pos = info.split(',');
            document.getElementById('ContentPlaceHolder1_tblat').value = pos[0];
            document.getElementById('ContentPlaceHolder1_tblan').value = pos[1];
        }
       );

        marker = new google.maps.Marker({
            map: map,
            draggable: true,
            animation: google.maps.Animation.DROP,
            position: postion,
            title: data
        });
        markersArray.push(marker);




    }




   
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="templatemo_post_top">
    <h1>Customer Data</h1>
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
                    <asp:Label ID="Label2" runat="server" Text="Customer ID"></asp:Label>
               </td>
               <td style="text-align: left">
                <asp:TextBox ID="tbid" runat="server"></asp:TextBox>
               </td>
               <td style="text-align: left">
                   &nbsp;</td>
           </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label3" runat="server" Text="Customer Name"></asp:Label>
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
                       <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbemail" runat="server" Width="400px"></asp:TextBox>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbaddress" runat="server" Width="400px"></asp:TextBox>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbphone" runat="server" MaxLength="10"></asp:TextBox>
                       <asp:FilteredTextBoxExtender ID="tbphone_FilteredTextBoxExtender" 
                           runat="server" Enabled="True" TargetControlID="tbphone" ValidChars="1234567890">
                       </asp:FilteredTextBoxExtender>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label7" runat="server" Text="password"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbpassword" runat="server" TextMode="Password"></asp:TextBox>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label8" runat="server" Text="Lat"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tblat" runat="server"></asp:TextBox>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label9" runat="server" Text="Lang"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tblan" runat="server"></asp:TextBox>
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
                                   &nbsp;</td>
                               <td style="text-align: center">
                                   <asp:Button ID="btnupdate" runat="server" CssClass="button" Text="Update" 
                                       onclick="btnupdate_Click" />
                               </td>
                               <td style="text-align: center">
                                   <input id="Button1" type="button" value="Map" class="button" onclick="setup()"/>
                               </td>
                           </tr>
                       </table>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
       </table>             	                        
                 
       </ContentTemplate>
       </asp:UpdatePanel>
        <div id="map" style="width:100%; height:500px; text-align: center" >                 
     <div class="clear"></div>
                        
   </div>

</asp:Content>


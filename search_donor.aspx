<%@ Page Title="" Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true"  EnableEventValidation="false" CodeFile="search_donor.aspx.cs" Inherits="search_donor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    
        .auto-style1 {
            width: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner1 jarallax">
		<div class="container">
		</div>
	</div>

	<div class="services-breadcrumb">
		<div class="container">
			<ul>
				<li><a href="index.html">Home</a><i>|</i></li>
				<li>Search A Donor</li>
			</ul>
		</div>
	</div>
<!-- //banner1 -->
<!-- icons -->
	<div class="banner-bottom" id="about">
		<div class="container">
					<h2 class="w3_heade_tittle_agile">Search A Donor</h2>
			        <p class="sub_t_agileits">Add Short Description</p>

					<div class="book-appointment">
						<h4>Search Donor</h4>
							   <div class="center-agileits-w3layouts same">
							       <div class="gaps">
									<p>Search Group</p>	

                                      <asp:DropDownList ID="_bg" runat="server" class="option" name="Name" placeholder="DOB" required="">
                                          <asp:ListItem>A+</asp:ListItem>
                                          <asp:ListItem>A-</asp:ListItem>
                                          <asp:ListItem>B+</asp:ListItem>
                                          <asp:ListItem>B-</asp:ListItem>
                                          <asp:ListItem>O+</asp:ListItem>
                                          <asp:ListItem>O-</asp:ListItem>
                                          <asp:ListItem>AB+</asp:ListItem>
                                          <asp:ListItem>AB-</asp:ListItem>
                                      </asp:DropDownList>
										<%--<select class="option">
											<option></option>
											<option>Cardiology</option>
											<option>Ophthalmology</option>
											<option>Neurology</option>
											<option>Psychology</option>
											<option>Dermatology</option>
										</select>--%>
								    </div>
                                    <tr>
                                     <td class="auto-style1">

                                        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                                     </td>
                                    </tr>
								</div>


							
								<div class="clearfix"></div>
											  <%--<input type="submit" value="Make an Appointment">--%>
                                   
								
							</div>
                        <div class="book-appointment">
                            <h4>Search Result</h4>
						<asp:GridView style="color:wheat;margin-left: -19px;position: initial" class="book-appointment"
        ID="GridView1" runat="server" EmptyDataText="No record Found" ShowHeaderWhenEmpty="True">

          </asp:GridView>   
                                   
								
					  </div>
				</div>
         </div>
     







    

</asp:Content>


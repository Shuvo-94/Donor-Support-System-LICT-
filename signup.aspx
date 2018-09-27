<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Guest.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dd1
        {
                width: 50.2%;
    float: left;
    padding: 15px 20px;
    margin-bottom: 20px;
    border: none;
    color: #000;
    border: 1px solid #777;
    font-weight: 600;
    outline: none;
    letter-spacing: 1px;
        }
         .dd2
        {
                width: 50.2%;
    float: left;
    padding: 15px 20px;
    margin-bottom: 20px;
    border: none;
    color: #000;
    border: 1px solid #777;
    font-weight: 600;
    outline: none;
    letter-spacing: 1px;
    margin-right: 18px;
        }
        .subBtn{
            width:50.2%;
            font-weight: 600;
    color: white;
    padding: 16px 30px;
    border: none;
    outline: none;
    background: #de0f17;
    border-radius: 0;
    letter-spacing: 2px;
    font-size: 2em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

<!-- banner1 -->
	<div class="banner1 jarallax">
		<div class="container">
		</div>
	</div>

	<div class="services-breadcrumb">
		<div class="container">
			<ul>
				<li><a href="index.html">Home</a><i>|</i></li>
				<li>Register</li>
			</ul>
		</div>
	</div>
<!-- //banner1 -->
	<div class="banner-bottom" id="about">
		<div class="container">
			<h2 class="w3_heade_tittle_agile">Register Here</h2>
		    <p class="sub_t_agileits">Get in touch...</p>

           <div class="contact-top-agileits">
               <div class="col-md-4 contact-grid ">
					<div class="contact-grid1 agileits-w3layouts">
						<i class="fa fa-location-arrow"></i>
						<div class="con-w3l-info">
						   <h4>Address </h4>
						  <p>12K Street<span>New York City.</span></p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-4 contact-grid">
					<div class="contact-grid2 w3">
						<i class="fa fa-phone" aria-hidden="true"></i>
						<div class="con-w3l-info">
						  <h4>Call Us</h4>
						   <p>+1234 567 890<span>+1234 567 890</span></p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-4 contact-grid">
					<div class="contact-grid3 w3l">
						<i class="fa fa-envelope"></i>
						<div class="con-w3l-info">
						  <h4>Email</h4>
						  <p><a href="mailto:info@example.com">info@example1.com</a>
						 
						  </p></div>
						  <div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
				
			</div>
			<div class="contact-form-aits">
				 
					
					<asp:TextBox ID="_name" runat="server" type="text" class="margin-right" name="Name" placeholder="Name" required=""></asp:TextBox>
                    <asp:TextBox ID="_email" runat="server" type="email" name="Email" placeholder="Email" required=""></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Required" ControlToValidate="_email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter the valid email" ControlToValidate="_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="_subject" class="margin-right" runat="server" type="text" name="Subject" placeholder="Subject" required=""></asp:TextBox>
                    <asp:TextBox ID="_message" runat="server" name="Message" placeholder="Message" required=""></asp:TextBox>
                    <%--<input type="text" class="margin-right" name="Name" placeholder="Name" required="">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="text" class="margin-right" name="Phone Number" placeholder="Phone Number" required="">
					<input type="text" name="Subject" placeholder="Subject" required="">
                    <textarea name="Message" placeholder="Message" required=""></textarea>--%>
                   
                    <asp:DropDownList ID="DropDownList1" runat="server" class="dd1" >
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Country" InitialValue="Select Country" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>

                     
                     <asp:TextBox class="dd2" ID="_password" runat="server" type="password" name="password" placeholder="password" required="" TextMode="Password"></asp:TextBox>
                    <asp:TextBox class="dd1" ID="_confirmPassword" runat="server" type="password" name="confirm_password" placeholder="Confirm Password" required="" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password must be the same" ControlToCompare="_password" ControlToValidate="_confirmPassword"></asp:CompareValidator>

                     <div class="send-button agileits w3layouts">
                        <asp:Button class="subBtn"  ID="Button1" runat="server" Text="REGISTRATION" OnClick="Button1_Click" />
                     </div>
				
				  <ul class="agileits_social_list two">
				        <li class="fallow"> Follow Us :</li>
								<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
								<li><a href="#" class="w3_agile_rss"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
							</ul>
				         
			   </div>
	    </div>
	</div>

<div class="map_agile">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84010033106!2d-74.25819252532891!3d40.70583163828471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1475140387172" style="border:0"></iframe>


</div>
</asp:Content>


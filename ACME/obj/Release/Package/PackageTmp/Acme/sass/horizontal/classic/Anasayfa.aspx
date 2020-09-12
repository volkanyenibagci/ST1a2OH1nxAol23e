<%@ Page Title="" Language="C#" MasterPageFile="~/Acme/sass/horizontal/classic/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ACME.Acme.sass.horizontal.classic.Anasayfa1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">

  <header class="main-header">
	  <div class="inside-header">
		  <div class="d-flex align-items-center logo-box justify-content-between">	
			<a href="Anasayfa.aspx" class="logo">			  
			  <div class="logo-mini">
				  <span class="light-logo"><img src="../images/logo-dark.png" alt="logo"></span>
				  <span class="dark-logo"><img src="../images/logo-dark.png" alt="logo"></span>
			  </div>
			  <div class="logo-lg">
				  <span class="light-logo"><img src="../images/logo-dark-text.png" alt="logo"></span>
				  <span class="dark-logo"><img src="../images/logo-light-text.png" alt="logo"></span>
			  </div>
			</a>	
		  </div>
		<!-- Header Navbar -->
		<nav class="navbar navbar-static-top">
		  <!-- Sidebar toggle button-->
		  <div>		  
			  <a href="#" data-provide="fullscreen" class="sidebar-toggle d-lg-inline-flex d-none" title="Full Screen">
				<i class="mdi mdi-crop-free"></i>
			  </a> 

		  </div>

	
		</nav>
	  </div>
  </header>
  




  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
	  <div class="container-full">
		<!-- Content Header (Page header) -->	  
		<div class="content-header">
			<h3>
				ACME
				<small>BITCOIN</small>
		  	</h3>
		  	<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="breadcrumb-item active">Dashboard</li>
		  	</ol>
		</div>
		   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="TimerTest" runat="server" Interval="1000" OnTick="TimerTest_Tick"></asp:Timer>
          <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
		  <ContentTemplate>
		<!-- Main content -->
			<section class="content">
				<div class="row">	
					<div class="col-12">
						<div class="box">
							<div class="box-body">
								<div class="row justify-content-between">
									<div class="col-xxxl-6 col-xl-6 col-12">
										<div class="pl-md-30 pt-md-30 pr-md-80 pb-md-30 p-0">
											<%--<h5 class="text-uppercase font-weight-700">COUNTER</h5>--%>
											<h1 class="font-weight-900 text-dark mt-30">COUNTER</h1>
											<%--<p class="mb-50">3.30142057 BTC</p>--%>
											<div class="d-md-flex d-block justify-content-between align-items-center">
												<div>
													<div class="d-flex align-items-center gap-items-3">
														<div class="w-70 h-70 bg-success-light rounded20 l-h-80 text-center">
															<%--<i class="text-success ti-arrow-down font-size-24"></i>--%><span style="color:black;font-size:xx-large" ><asp:Literal  ID="Literal3" runat="server"></asp:Literal></span>
															 
														</div>
														<div>
															<h3 class="my-0 text-dark font-weight-700">HOUR</h3>
								<%--							<p class="mb-0">Hour</p>--%>
														</div>
													</div>
                                                    <asp:Button class="btn btn-success mt-30 d-block mb-md-0 mb-30" ID="Button1" runat="server" Text="+" OnClick="HourOnclickUp"  />
													
													<asp:Button class="btn btn-success mt-30 d-block mb-md-0 mb-30" ID="Button2" runat="server" Text="-" OnClick="HourOnclickDown" />
												</div>
												<div>
													<div class="d-flex align-items-center gap-items-3">
														<div class="w-70 h-70 bg-primary-light rounded20 l-h-80 text-center">
															<%--<i class="text-primary ti-arrow-up font-size-24"></i>--%> <span style="color:black;font-size:xx-large" ><asp:Literal ID="Literal1" runat="server"></asp:Literal></span>
														</div>
														<div>
															<h3 class="my-0 text-dark font-weight-700">MINUTE</h3>
															<%--<p class="mb-0">Expense</p>--%>
														</div>
													</div>
													<asp:Button class="btn btn-primary mt-30 d-block" ID="Button3" runat="server" Text="+" OnClick="MınuteOnclickUp" />
													
													<asp:Button class="btn btn-primary mt-30 d-block" ID="Button4" runat="server" Text="-"  OnClick="MınuteOnclickDown"/>
												</div>
												<div>
													<div class="d-flex align-items-center gap-items-3">
														<div class="w-70 h-70 bg-primary-light rounded20 l-h-80 text-center">
															<%--<i class="text-primary ti-arrow-up font-size-24"></i>--%><span style="color:black;font-size:xx-large" ><asp:Literal ID="Literal2" runat="server"></asp:Literal></span>
														</div>
														<div>
															<h3 class="my-0 text-dark font-weight-700">SECOND</h3>
															<%--<p class="mb-0">Expense</p>--%>
														</div>
													</div>

													<%--<asp:Button class="btn btn-primary mt-30 d-block" ID="Button5" runat="server" Text="+"   />
													<asp:Button class="btn btn-primary mt-30 d-block" ID="Button6" runat="server" Text="-" />--%>
													<BR/>
													<BR/>
													<BR/>
													<BR/>
													<BR/>
													<BR/><BR/>

												</div>
											</div>
										</div>
									</div>
									
									<div class="col-xxxl-6 col-xl-6 col-12">
										<div class="row">
											<div class="col-md-4 col-12">
												<div class="box bg-warning bg-brick-dark rounded30 mb-md-30 mt-30 mb-0">
													<div class="box-body">
														<div>
															<i class="glyphicon glyphicon-usd" title="BTC"></i>
															<h4>USD</h4>
														</div>
														<div class="mt-150">
															<%--<h3 class="font-weight-700">$3,256.00</h3>--%>
                                                            <h3><asp:Label   ID="dolarTextlabel"  class="font-weight-700" Text="text" runat="server" /></h3>
															<%--<p>3.30142057 BTC</p>--%>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="box bg-primary bg-brick-dark rounded30 mb-md-30 mt-30 mb-0">
													<div class="box-body">
														<div>
															<i class="glyphicon glyphicon-gbp" title="XRP"></i>
															<h4>GBP</h4>
														</div>
														<div class="mt-150">
															 <h3><asp:Label ID="gbpTextLabel"  class="font-weight-700" Text="text" runat="server" /></h3>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="box bg-info bg-brick-dark rounded30 mb-md-30 mt-30 mb-0">
													<div class="box-body">
														<div>
															<i class="glyphicon glyphicon-euro" title="USDT"></i>
															<h4>EURO</h4>
														</div>
														<div class="mt-150">
															 <h3><asp:Label ID="euroTextLabel"  class="font-weight-700" Text="text" runat="server" /></h3>
                                                           <%-- <p><h3><asp:Label ForeColor="Green" Visible="false" ID="euroTextplus"  class="font-weight-700" Text="+" runat="server" /></h3></p>
															<p><h3><asp:Label ForeColor="Red" Visible="false" ID="euroTextminus"  class="font-weight-700" Text="+" runat="server" /></h3></p>--%>
															
														</div>
													</div>
												</div>
											</div>
<%--											<div class="col-md-3 col-12">
												<div class="box bg-danger bg-brick-dark rounded30 mb-md-30 mt-30 mb-0">
													<div class="box-body">
														<div>
															<i class="cc SDC text-white" title="SDC"></i>
															<h4>SIRIN LABS</h4>
														</div>
														<div class="mt-150">
															<h3 class="font-weight-700">$1,523.00</h3>
															<p>1,523.00 SDC</p>
														</div>
													</div>
												</div>
											</div>--%>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</div>						
			</section>
		<!-- /.content -->
              <asp:Literal ID="litMsg" runat="server"></asp:Literal>
			  </ContentTemplate>
			  <Triggers>
				  <asp:AsyncPostBackTrigger ControlID="timerTest" EventName="tick" />
			  </Triggers>
			  </asp:UpdatePanel>

	  </div>
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right d-none d-sm-inline-block">
       <%-- <ul class="nav nav-primary nav-dotted nav-dot-separated justify-content-center justify-content-md-end">
		  <li class="nav-item">
			<a class="nav-link" href="javascript:void(0)">FAQ</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="#">Purchase Now</a>
		  </li>
		</ul>--%>
    </div>
	  &copy; 2020 <a href="https://www.multipurposethemes.com/">Volkan Yenibağcı</a>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar">
	  
	<div class="rpanel-title"><span class="pull-right btn btn-circle btn-danger"><i class="ion ion-close text-white" data-toggle="control-sidebar"></i></span> </div>  <!-- Create the tabs -->
    <ul class="nav nav-tabs control-sidebar-tabs">
      <li class="nav-item"><a href="#control-sidebar-home-tab" data-toggle="tab">Chat</a></li>
      <li class="nav-item"><a href="#control-sidebar-settings-tab" data-toggle="tab">Todo</a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
          <div class="flexbox">
			<a href="javascript:void(0)" class="text-grey">
				<i class="ti-more"></i>
			</a>	
			<p>Users</p>
			<a href="javascript:void(0)" class="text-right text-grey"><i class="ti-plus"></i></a>
		  </div>
		  <div class="lookup lookup-sm lookup-right d-none d-lg-block">
			<input type="text" name="s" placeholder="Search" class="w-p100">
		  </div>
          <div class="media-list media-list-hover mt-20">
			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-success" href="#">
				<img src="../images/avatar/1.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Tyler</strong></a>
				</p>
				<p>Praesent tristique diam...</p>
				  <span>Just now</span>
			  </div>
			</div>

			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-danger" href="#">
				<img src="../images/avatar/2.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Luke</strong></a>
				</p>
				<p>Cras tempor diam ...</p>
				  <span>33 min ago</span>
			  </div>
			</div>

			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-warning" href="#">
				<img src="../images/avatar/3.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Evan</strong></a>
				</p>
				<p>In posuere tortor vel...</p>
				  <span>42 min ago</span>
			  </div>
			</div>

			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-primary" href="#">
				<img src="../images/avatar/4.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Evan</strong></a>
				</p>
				<p>In posuere tortor vel...</p>
				  <span>42 min ago</span>
			  </div>
			</div>			
			
			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-success" href="#">
				<img src="../images/avatar/1.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Tyler</strong></a>
				</p>
				<p>Praesent tristique diam...</p>
				  <span>Just now</span>
			  </div>
			</div>

			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-danger" href="#">
				<img src="../images/avatar/2.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Luke</strong></a>
				</p>
				<p>Cras tempor diam ...</p>
				  <span>33 min ago</span>
			  </div>
			</div>

			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-warning" href="#">
				<img src="../images/avatar/3.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Evan</strong></a>
				</p>
				<p>In posuere tortor vel...</p>
				  <span>42 min ago</span>
			  </div>
			</div>

			<div class="media py-10 px-0">
			  <a class="avatar avatar-lg status-primary" href="#">
				<img src="../images/avatar/4.jpg" alt="...">
			  </a>
			  <div class="media-body">
				<p class="font-size-16">
				  <a class="hover-primary" href="#"><strong>Evan</strong></a>
				</p>
				<p>In posuere tortor vel...</p>
				  <span>42 min ago</span>
			  </div>
			</div>
			  
		  </div>

      </div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
          <div class="flexbox">
			<a href="javascript:void(0)" class="text-grey">
				<i class="ti-more"></i>
			</a>	
			<p>Todo List</p>
			<a href="javascript:void(0)" class="text-right text-grey"><i class="ti-plus"></i></a>
		  </div>
        <ul class="todo-list mt-20">
			<li class="py-15 px-5 by-1">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_1" class="filled-in">
			  <label for="basic_checkbox_1" class="mb-0 h-15"></label>
			  <!-- todo text -->
			  <span class="text-line">Nulla vitae purus</span>
			  <!-- Emphasis label -->
			  <small class="badge bg-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
			  <!-- General tools such as edit or delete-->
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_2" class="filled-in">
			  <label for="basic_checkbox_2" class="mb-0 h-15"></label>
			  <span class="text-line">Phasellus interdum</span>
			  <small class="badge bg-info"><i class="fa fa-clock-o"></i> 4 hours</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5 by-1">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_3" class="filled-in">
			  <label for="basic_checkbox_3" class="mb-0 h-15"></label>
			  <span class="text-line">Quisque sodales</span>
			  <small class="badge bg-warning"><i class="fa fa-clock-o"></i> 1 day</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_4" class="filled-in">
			  <label for="basic_checkbox_4" class="mb-0 h-15"></label>
			  <span class="text-line">Proin nec mi porta</span>
			  <small class="badge bg-success"><i class="fa fa-clock-o"></i> 3 days</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5 by-1">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_5" class="filled-in">
			  <label for="basic_checkbox_5" class="mb-0 h-15"></label>
			  <span class="text-line">Maecenas scelerisque</span>
			  <small class="badge bg-primary"><i class="fa fa-clock-o"></i> 1 week</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_6" class="filled-in">
			  <label for="basic_checkbox_6" class="mb-0 h-15"></label>
			  <span class="text-line">Vivamus nec orci</span>
			  <small class="badge bg-info"><i class="fa fa-clock-o"></i> 1 month</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5 by-1">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_7" class="filled-in">
			  <label for="basic_checkbox_7" class="mb-0 h-15"></label>
			  <!-- todo text -->
			  <span class="text-line">Nulla vitae purus</span>
			  <!-- Emphasis label -->
			  <small class="badge bg-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
			  <!-- General tools such as edit or delete-->
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_8" class="filled-in">
			  <label for="basic_checkbox_8" class="mb-0 h-15"></label>
			  <span class="text-line">Phasellus interdum</span>
			  <small class="badge bg-info"><i class="fa fa-clock-o"></i> 4 hours</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5 by-1">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_9" class="filled-in">
			  <label for="basic_checkbox_9" class="mb-0 h-15"></label>
			  <span class="text-line">Quisque sodales</span>
			  <small class="badge bg-warning"><i class="fa fa-clock-o"></i> 1 day</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
			<li class="py-15 px-5">
			  <!-- checkbox -->
			  <input type="checkbox" id="basic_checkbox_10" class="filled-in">
			  <label for="basic_checkbox_10" class="mb-0 h-15"></label>
			  <span class="text-line">Proin nec mi porta</span>
			  <small class="badge bg-success"><i class="fa fa-clock-o"></i> 3 days</small>
			  <div class="tools">
				<i class="fa fa-edit"></i>
				<i class="fa fa-trash-o"></i>
			  </div>
			</li>
		  </ul>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
  
</div>

	
</asp:Content>

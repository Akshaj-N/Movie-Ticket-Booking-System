<!DOCTYPE html>
<html>
    <head>        
        <title>Movie Ticket Booking System</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="icon" href="/images/pglogo.png">
        <link href="/css/movie.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>
        <link href="/css/style.css" rel='stylesheet' type='text/css' media="all">
        <!-- Custom fonts for this template-->
        <link href="/css/all.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="/css/sb-admin.css" rel="stylesheet">
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
</head>
<body id="page-top">

    <nav class="navbar navbar-expand navbar-dark static-top" style="background-color: black;">
        <a class="navbar-brand mr-1" href="/dashboard">Welcome, Admin.</a>

        <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="/#">
            <i class="fas fa-bars"></i>
        </button>

    </nav>
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="sidebar navbar-nav" style='background-color: black'>
            <li class="nav-item active">
                <a class="nav-link" href="/dashboard">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Admin Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/movies">
                    <i class="fas fa-fw fa-video"></i>
                    <span>Movies</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/theatres">
                    <i class="fas fa-fw fa-building"></i>
                    <span>Theaters</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/shows">
                    <i class="fas fa-tachometer-alt"></i>
                    <span>Shows</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/customers">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Customers</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/bookings">
                    <i class="fas fa-fw fa-ticket-alt"></i>
                    <span>Bookings</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/users">
                    <i class="fas fa-fw fa-user-tie"></i>
                    <span>Users</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/changepwd">
                    <i class="fas fa-fw fa-key"></i>
                    <span>Change Password</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span></a>
            </li>
        </ul>

        <div id="content-wrapper" 
             style="background:linear-gradient( rgba(255, 255, 255, 0.7) 100%, rgba(255, 255, 255, 0.8)100%),url('images/aa.jpg');width:100vw;height:calc(100vh - 56px);background-size: 100% 100%;">

            <div class="container-fluid">
            <jsp:include page="msg" />


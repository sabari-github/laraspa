<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'SPA') }}</title>
    <!-- Scripts -->
    <script type="text/javascript" src="{{ asset('resources/assets/js/libs/jquery.js') }}"></script>
    <!-- Styles -->
    <link href="{{ asset('resources/assets/css/styles.css') }}" rel="stylesheet">
</head>
<body @guest class="sb-nav-fixed sb-sidenav-toggled" @else class="sb-nav-fixed" @endguest>
    <nav class="sb-topnav navbar navbar-expand navbar-light bg-light">
        <a class="navbar-brand">{{ trans('messages.lbl_school_progress_app') }}</a>
        @auth
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
        @endauth
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ml-auto ml-md-0">
            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Language (語) -->
                <li class="nav-item dropdown">
                    <a id="navbarLangDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        <img src="{{ asset('resources/assets/images/common/'.App::getLocale().'.png') }}">
                        <span class="caret"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarLangDropdown">
                        @if(App::getLocale() == "jp")
                        <a class="dropdown-item" href="{{ route('language','en') }}">
                            <img class="mr-2" src="{{ asset('resources/assets/images/common/en.png') }}">English
                        </a>
                        @elseif(App::getLocale() == "en")
                        <a class="dropdown-item" href="{{ route('language','jp') }}">
                            <img class="mr-2" src="{{ asset('resources/assets/images/common/jp.png') }}">日本語
                        </a>
                        @endif
                    </div>
                </li>
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ trans('messages.lbl_login') }}</a>
                    </li>
                    <!-- @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ trans('messages.lbl_register') }}</a>
                        </li>
                    @endif -->
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('admin.profile') }}">{{ trans('messages.lbl_profile') }}</a>
                            <a class="dropdown-item" href="{{ route('admin.resetpassword') }}">{{ trans('messages.lbl_reset_password') }}</a>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">{{ trans('messages.lbl_core') }}</div>
                        <a class="nav-link" href="{{ route('home') }}">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            {{ trans('messages.lbl_dashboard') }}
                        </a>
                        <div class="sb-sidenav-menu-heading">{{ trans('messages.lbl_interface') }}</div>
                        <!-- 授業 -->
                        <a class="nav-link collapsed" href="{{ route('classes.list') }}">
                            <div class="sb-nav-link-icon"><i class="fas fa-chalkboard"></i></div>
                            {{ trans('messages.lbl_classes') }}
                        </a>
                        <!-- 科目 -->
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSubjectLayouts" aria-expanded="false" aria-controls="collapseSubjectLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                            {{ trans('messages.lbl_subjects') }}
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseSubjectLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="{{ route('subjects.list') }}">
                                    <i class="fa fa-list mr-1" aria-hidden="true"></i>{{ trans('messages.lbl_list') }}
                                </a>
                                <a class="nav-link" href="{{ route('subjects.subjectrelationlist') }}">
                                    <i class="fas fa-chalkboard-teacher mr-1" aria-hidden="true"></i>
                                    {{ trans('messages.lbl_subject_class_list') }}
                                </a>
                            </nav>
                        </div>
                        <!-- 学生 -->
                        <a class="nav-link collapsed" href="{{ route('students.list') }}">
                            <div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>
                            {{ trans('messages.lbl_students') }}
                        </a>
                        <!-- 結果 -->
                        <a class="nav-link collapsed" href="{{ route('result.list') }}">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            {{ trans('messages.lbl_result') }}
                        </a>
                    </div>
                </div>
                <!-- <div class="sb-sidenav-footer">
                    <div class="small"></div>
                </div> -->
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main class="py-1">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                        @include('partials.flash-message')
                        
                        @yield('content')
                        </div>
                    </div>
                </div>
            </main>
            <footer class="py-1 bg-dark mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; SPA 2020</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
    </div>
</body>
<!-- Scripts -->
<script type="text/javascript" src="{{ asset('resources/assets/js/libs/bootstrap.bundle.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('resources/assets/js/navmenu.js') }}"></script>
<script type="text/javascript" src="{{ asset('resources/assets/js/all.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('resources/assets/js/common.js') }}"></script>
</html>
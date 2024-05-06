<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title></title>
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="admin">Năng Lực Số</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                    aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                        class="fas fa-search"></i></button>
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#!">Settings</a></li>
                    <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="#!">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Điều hướng</div>
                        <a class="nav-link" href="admin">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Câu hỏi ôn tập
                        </a>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Người dùng/phân quyền
                        </a>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Bài viết
                        </a>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Thống kê
                        </a>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Thông báo
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    Start Bootstrap
                </div>
            </nav>
        </div>
        <style>
            .max-img-size {
                max-width: 500px;
                max-height: 500px;
            }
        </style>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Sửa câu hỏi và đáp án</h5>
                        <a href="{{ route('admincauhoi', ['id' => $cauHoi->IDChuDe]) }}">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </a>

                    </div>
                    <div class="modal-body">
                        <form action="{{ route('updatecauhoi') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="IDCauHoi" value="{{ $cauHoi->IDCauHoi }}">
                            <!-- Thêm các trường để cập nhật thông tin của câu hỏi và đáp án -->
                            <div class="form-group">
                                <label for="noidung">Nội dung câu hỏi:</label>
                                <input type="text" class="form-control" id="noidung" name="NoiDungCauHoi"
                                    value="{{ $cauHoi->NoiDungCauHoi }}">
                            </div>
                            <!-- Thêm các trường để cập nhật thông tin của các đáp án -->
                            <!-- Ví dụ: -->
                            @foreach ($dapAn as $dapAnItem)
                                <div class="mb-3 form-check">
                                    <label class="form-check-label" for="IDDapAnDung_{{ $dapAnItem->IDDapAn }}">
                                        {{ $dapAnItem->IDDapAn }}
                                    </label>
                                    <input type="checkbox" class="form-check-input"
                                        id="IDDapAnDung_{{ $dapAnItem->IDDapAn }}" name="LaDapAnDung[{{ $dapAnItem->IDDapAn }}]"
                                        value="{{ $dapAnItem->IDDapAn }}"
                                        {{ $dapAnItem->LaDapAnDung ? 'checked' : '' }}>
                                    <input type="text" class="form-control" id="answer_{{ $dapAnItem->IDDapAn }}"
                                        name="dapAns[{{ $dapAnItem->IDDapAn }}]"
                                        value="{{ $dapAnItem->NoiDungDapAn }}">
                                </div>
                            @endforeach

                            @if ($cauHoi->anhmh)
                                <label class="form-check-label" for="IDCauHoi_{{ $cauHoi->IDCauHoi }}">
                                    Ảnh minh họa
                                </label><br>
                                <img src="{{ asset('db_img/' . $cauHoi->IDChuDe . '/' . $cauHoi->anhmh) }}"
                                    class="img-fluid max-img-size" alt="Ảnh đáp án">
                            @endif
                            <!-- Input cho việc tải lên ảnh mới -->
                            <input type="file" class="form-control-file" id="anhmh" name="anhmh">
                            <!-- Thêm các trường cho các đáp án khác -->
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
                        </form>
                    </div>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2023</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <!-- Button trigger modal -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>

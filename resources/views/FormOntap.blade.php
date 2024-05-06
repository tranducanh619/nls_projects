<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ÔN TẬP</title>


    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>

    <header>
        <div class="container">
            <nav class="navbar navbar-expand-lg ftco_navbar ftco-navbar-light bg-dark p-3" id="ftco-navbar">
                <div class="container">
                    <a class="navbar-brand font-monospace fw-bold fs-3 text-info"
                        href="{{ route('trangchu') }}">NangLucSo</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="fa fa-bars"></span> Menu
                    </button>
                    <div class="collapse navbar-collapse " id="ftco-nav">
                        <ul class="navbar-nav ml-auto mr-md-3">
                            <li class="nav-item active"><a href="#" class="nav-link mx-3 text-white">Trang chủ</a>
                            </li>
                            <li class="nav-item"><a href="#" class="nav-link mx-3 text-white">Giới thiệu</a></li>
                            <li class="nav-item"><a href="#" class="nav-link mx-3 text-white">Ôn tập</a></li>
                            <li class="nav-item"><a href="#" class="nav-link mx-3 text-white">Diễn đàn</a></li>
                            <li class="nav-item"><a href="#" class="nav-link mx-3 text-white">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

        </div>

    </header>
    <div class="d-grid mt-5 ">
        <h1 class="fs-2 mx-auto">Chủ đề: {{ $chude->TenChuDe }}</h1>
    </div>
    <div class="row">
        <!-- Nội dung ôn tập -->
        <div class="col-md-6 mx-auto">
            <form class=" bg-white " action="{{ route('thongke') }}" method="post">
                @csrf
                @foreach ($cauhoi as $cauHoi)
                    <div style="border: 1px solid black;" class="p-3 rounded-3 mb-3">
                        <p class="fw-bold">{{ $cauHoi->NoiDungCauHoi }}</p>
                        <div>
                            <div>
                                @if ($cauHoi->anhmh)
                                    <img src="{{ asset('db_img/' . $cauHoi->IDChuDe . '/' . $cauHoi->anhmh) }}"
                                        class="w-100 mh-100 mb-3" alt="Responsive image">
                                @endif

                            </div>
                        </div>
                        <!-- Lặp qua các đáp án của câu hỏi -->
                        @foreach ($dapan as $dapAn)
                            @if ($dapAn->IDCauHoi == $cauHoi->IDCauHoi)
                                <div class="form-check mb-3">
                                    <input class="form-check-input" type="radio"
                                        name="dap_an[{{ $cauHoi->IDCauHoi }}]" value="{{ $dapAn->IDDapAn }}"
                                        id="radioExample{{ $dapAn->IDDapAn }}" />
                                    <label class="form-check-label" for="radioExample{{ $dapAn->IDDapAn }}">
                                        {{ $dapAn->NoiDungDapAn }}
                                    </label>
                                </div>
                            @endif
                        @endforeach
                    </div>
                @endforeach

                <div class="d-flex justify-content-center mb-5 mt-5">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <input type="hidden" name="IDChuDeCauHoi" value="{{ $cauHoi->IDChuDe }}">
                    <input type="hidden" name="IDPhien" value="{{ $phienDangTonTai->IDPhien }}">
                </div>
            </form>
        </div>
        <div class="col-md-2 mx-auto position-fixed top-50 start-0 translate-middle-y">
            @for ($i = 1; $i <= $soCauHoi; $i++)
                <span id="cauHoi{{ $i }}" class="badge bg-light text-dark" onclick="scrollToCauHoi({{ $i }})">Câu {{ $i }}</span>
            @endfor
        </div>

    </div>

    <footer class="w3-container w3-theme-dark w3-padding-16">
        <h3>Footer</h3>
        <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
        <div style="position:relative;bottom:55px;" class="w3-tooltip w3-right">
            <span class="w3-text w3-theme-light w3-padding">Go To Top</span>
            <a class="w3-text-white" href="#myHeader"><span class="w3-xlarge">
                    <i class="fa fa-chevron-circle-up"></i></span></a>
        </div>
        <p>Remember to check out our  <a href="w3css_references.asp" class="w3-btn w3-theme-light"
                target="_blank">W3.CSS Reference</a></p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // Lắng nghe sự kiện khi người dùng click vào một đáp án
            $('input[type="radio"]').on('change', function() {
                // Lấy ID của câu hỏi từ thuộc tính name của input radio
                var cauHoiID = $(this).attr('name').match(/\d+/)[0];
                // Thêm class "bg-success" (màu xanh) vào span có ID tương ứng với câu hỏi được chọn
                $('#cauHoi' + cauHoiID).removeClass('bg-light text-dark').addClass('bg-success');
            });
        });
    </script>

    <script>
        function scrollToCauHoi(cauHoiID) {
            // Lấy vị trí của câu hỏi theo ID
            var cauHoiPosition = $('#cauHoi' + cauHoiID)[0].getBoundingClientRect().top;

            // Cuộn trang đến vị trí của câu hỏi
            $('html, body').animate({
                scrollTop: $(window).scrollTop() + cauHoiPosition
            }, 'slow');
        }
    </script>

</body>

</html>

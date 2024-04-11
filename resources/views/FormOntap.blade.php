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
                    <a class="navbar-brand font-monospace fw-bold fs-3 text-info" href="/">NangLucSo</a>
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
    <div class="d-grid col-3 mx-auto mt-5 ">
        <h1 class="fs-2">Chủ đề: sử dụng máy tính</h1>
    </div>
    <div class="row col-5 mx-auto ">
        <h4 class="fw-bold text-center mt-3"></h4>
        <form class=" bg-white " action="">
            @for ($i = 0; $i < 5; $i++)
                <div style="border: 1px solid black;" class= "p-3 rounded-3 mb-3">
                    <p class="fw-bold">{{ $i+1 .'. '}}How satisfied are you with our product?</p>
                    <div>
                        <div>
                            <img src="https://img.thuthuatphanmem.vn/uploads/2018/10/26/nhung-anh-dep-ve-viet-nam_055420259.jpg"
                                class="w-100 mh-100 mb-3" alt="Responsive image">
                        </div>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="radio" name="exampleForm" id="radioExample1" />
                        <label class="form-check-label" for="radioExample1">
                            Option 1
                        </label>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="radio" name="exampleForm" id="radioExample2" />
                        <label class="form-check-label" for="radioExample2">
                            Option 2
                        </label>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="radio" name="exampleForm" id="radioExample3" />
                        <label class="form-check-label" for="radioExample3">
                            Option 3
                        </label>
                    </div>
                </div>
                
                @endfor
        </form>
        <div class="d-flex justify-content-center mb-5 mt-5">
            <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary">Submit</button>
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
</body>

</html>

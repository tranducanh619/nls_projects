<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diễn đàn</title>
    <!-- Link thư viện Bootstrap CSS -->
    <link rel="stylesheet" href="{{ asset('css/diendan.css') }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Link thư viện Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


</head>


<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-custom">
            <div class="container">
                <a class="navbar-brand" href="{{ route('trangchu') }}">NangLucSo</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Giới thiệu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Ôn tập</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Diễn đàn</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Liên hệ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>


    <section>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Thêm mới bài viết</div>


                        <div class="card-body">
                            <form method="POST" action="{{ route('hienthidiendan') }}">
                                @csrf


                                <div class="form-group">
                                    <label for="tieude">Tiêu đề:</label>
                                    <input type="text" name="tieude" class="form-control" required>
                                </div>


                                <div class="form-group">
                                    <label for="noidung">Nội dung:</label>
                                    <textarea name="noidung" class="form-control" rows="5" required></textarea>
                                </div>


                                <div class="form-group">
                                    <label for="IDChuDe">Chủ đề:</label>
                                    <select name="IDChuDe" class="form-control" required>
                                        @foreach ($chude as $cd)
                                            <option value="{{ $cd->IDChuDeBaiViet }}">{{ $cd->TenChuDe }}</option>
                                        @endforeach
                                    </select>
                                </div>


                                <button type="submit" class="btn btn-primary">Thêm bài viết</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    @foreach ($chude as $cd)
        <div class="container mt-5">
            <h2>{{ $cd->TenChuDe }}</h2>
            @foreach ($baiviet as $bv)
                @if ($bv->IDChuDe == $cd->IDChuDeBaiViet)
                    <div class="card my-3">
                        <div class="card-body @if ($bv->highlight) highlight-card @endif">
                            <h3 class="card-title">Người đăng bài: {{ $bv->IDNguoiDung }}</h3>
                            <h4 class="card-subtitle mb-2 text-muted">Tiêu đề: {{ $bv->TieuDe }}</h4>
                            <p class="card-text">Nội dung: {{ $bv->NoiDung }}</p>
                            <p class="card-text">Ngày đăng: {{ $bv->NgayDang }}</p>
                            <p class="card-text">Lượt like: {{ $bv->SoLuotLike }}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group btn-like-comment" role="group" aria-label="Button group">

                                    <button type="button" class="btn btn-secondary like-button"
                                        onclick="likePost({{ $bv->IDBaiViet }})">
                                        <i class="fas fa-thumbs-up"></i> Thích
                                    </button>

                                    <button type="button" class="btn btn-info"
                                        onclick="showCommentTextarea('{{ $bv->IDBaiViet }}')">
                                        <i class="far fa-comment"></i> Bình luận
                                    </button>
                                </div>
                                @if ($bv->IDNguoiDung == $nguoidung->id || $nguoidung->id == 1)
                                <div class="btn-group btn-edit-delete" role="group" aria-label="Button group">
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                        data-target="#editModal" onclick="setBaiVietId('{{ $bv->IDBaiViet }}')">
                                        <i class="fas fa-edit"></i> Sửa thông tin
                                    </button>
                                    <button type="button" class="btn btn-danger"
                                        onclick="confirmDelete('{{ $bv->IDBaiViet }}')">
                                        <i class="fas fa-trash-alt"></i> Xóa
                                    </button>
                                </div>
                                @endif
                            </div>
                            <div id="commentTextarea{{ $bv->IDBaiViet }}" class="mt-3" style="display: none;">
                                <textarea id="commentContent{{ $bv->IDBaiViet }}" class="form-control" rows="3"
                                    placeholder="Nhập bình luận của bạn"></textarea>
                                <button type="button" class="btn btn-primary mt-2"
                                    onclick="submitComment('{{ $bv->IDBaiViet }}')">Gửi</button>
                            </div>


                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    @endforeach


    <!-- Modal -->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Sửa thông tin</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editForm" method="POST" action="{{ route('diendan.update') }}">
                        @csrf
                        <input type="hidden" name="IBBaiViet" id="IBBaiViet">
                        <div class="form-group">
                            <label for="IDChuDe">ID Chủ Đề</label>
                            <input type="text" class="form-control" id="IDChuDe" name="IDChuDe">
                        </div>
                        <div class="form-group">
                            <label for="TieuDe">Tiêu Đề</label>
                            <input type="text" class="form-control" id="TieuDe" name="tieude">
                        </div>
                        <div class="form-group">
                            <label for="NoiDung">Nội Dung</label>
                            <textarea class="form-control" id="NoiDung" name="noidung"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Lưu</button>
                    </form>
                </div>
            </div>
        </div>
    </div>



    <script>
        function confirmDelete(baiVietId) {
            if (confirm("Bạn có chắc chắn muốn xóa bài viết này không?")) {
                // Gửi yêu cầu xóa bài viết đến controller
                window.location.href = '/diendan/xoa/' + baiVietId;
            }
        }


        function setBaiVietId(baiVietId) {
            document.getElementById("IBBaiViet").value = baiVietId;
        }


        function likePost(baiVietId) {
            // Xử lý logic khi người dùng thích bài viết
            window.location.href = '/diendan/' + baiVietId;
        }


        function showCommentTextarea(baiVietId) {
            // Hiển thị textarea cho người dùng nhập bình luận
            document.getElementById("commentTextarea" + baiVietId).style.display = "block";
        }


        function submitComment(baiVietId) {
            // Lấy nội dung bình luận từ textarea
            var commentContent = document.getElementById("commentTextarea" + baiVietId).getElementsByTagName("textarea")[0]
                .value;
            // Ở đây bạn có thể gửi nội dung bình luận này đến server hoặc thực hiện các xử lý khác
            alert('Bạn đã bình luận: ' + commentContent);
        }
    </script>
    <!-- Link thư viện Bootstrap JS (đặt trước thẻ đóng </body>) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>


</html>

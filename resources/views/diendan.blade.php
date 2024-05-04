<!-- resources/views/them-bai-viet.blade.php -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popup Sửa Thông Tin</title>
    <!-- Link thư viện Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

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
                                    <textarea type ="text" name="noidung" class="form-control" rows="5" required></textarea>
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
        <h2>{{ $cd->TenChuDe }}</h2>
        @foreach ($baiviet as $bv)
            @if ($bv->IDChuDe == $cd->IDChuDeBaiViet)
                <div>
                    <h3>- Người đăng bài:{{ $bv->IDNguoiDung }}</h3>
                    <h3>- Tiêu đề: {{ $bv->TieuDe }}</h3>
                    <h3>- Nội dung: {{ $bv->NoiDung }}</h3>
                    <h3>- Ngày đăng: {{ $bv->NgayDang }}</h3>
                    <h3>- Lượt like: {{ $bv->SoLuotLike }}</h3>
                </div>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal" onclick="setBaiVietId('{{ $bv->IDBaiViet }}')">
                    Sửa thông tin
                </button>
                <button type="button" class="btn btn-danger" onclick="confirmDelete('{{ $bv->IDBaiViet }}')">
                    Xóa
                </button>
            @endif
        @endforeach
    @endforeach


    <!-- Button trigger modal -->


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
    </script>
    <!-- resources/views/posts/index.blade.php -->
    <script>
        function setBaiVietId(baiVietId) {
            document.getElementById("IBBaiViet").value = baiVietId;
        }
    </script>
    <!-- Link thư viện Bootstrap JS (đặt trước thẻ đóng </body>) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>

</html>

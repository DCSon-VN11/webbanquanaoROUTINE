<style>

</style>
<?php
require_once "../back-end/db.php";
if (isset($_SESSION['user'])) {
    $user_id = $_SESSION['user']['user_id'];
    $us = $_SESSION['user']['name'];
    $av = $_SESSION['user']['avatar'];
    $ro = $_SESSION['user']['role'];
}
?>
<?php 

//include "../sendMail.php";
//$send = new Send();
?>


<footer>
    <div class="container-fluid footer-top">
        <div class="input-DK text-center">
            <form method="POST">
                <input type="email" name="email" placeholder="Đăng ký để nhận thông tin ...">
                <input type="submit" name="register" value="Đăng ký"></input>
            </form>
        </div>
    </div>
    <?php
if (isset($_POST['register'])) {
    extract($_REQUEST);
    //$send->sendMailsRegister( $_POST['email'], $us);
    }
?>
    <div class="container-fluid">
        <div class="row text footer-content">
            <div class="col-md-3">
                <h4>Công ty</h4>
                <ul>
                    <li><a href="intro.php">Giới thiệu</a></li>
                    <li><a href="404.php">Chăm sóc khách hàng</a></li>
                    <li><a href="404.php">Hệ thống cửa hàng</a></li>
                    <li><a href="page_size.php">Bảng size</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h4>Chính sách khách hàng</a></h4>
                <ul>
                    <li><a href="intro.php">Chính Sách Khách Hàng Thân Thiết</a></li>
                    <li><a href="page_2.php">Chính Sách Đổi Trả</a></li>
                    
                </ul>
            </div>
            <div class="col-md-3">
                <h4>Kết nối với chúng tôi</h4>
                <div>
                    <a href="https://www.facebook.com/profile.php?id=100045404235857" target="_blank" style="margin: 5px 7px;"><img src="../back-end/img/anhicon1.png" alt=""></a>
                    <a href="#" style="margin: 5px 7px;"><img src="../back-end/img/anhicon2.png" alt=""></a>
                    <a href="#" style="margin: 5px 7px;"><img src="../back-end/img/anhicon3.png" alt=""></a>
                    <a href="#" style="margin: 5px 7px; size=1px"><img src="../back-end/img/anhicon5.png" alt=""></a>
                    <br>
                    <a href="#"><img src="../back-end/img/logo-bct.png" style="margin-top: 5px;" alt="" width="50%"></a>
                </div>
            </div>
            <div class="col-md-3">
                <h4>Thông tin cửa hàng</h4>
                <div>
                    <p><b>Cơ sở 1:</b><br>
                        <span>Phố Phúc Sơn - Phường Vũ Ninh - TP. Bắc Ninh - Tỉnh Bắc Ninh</span>
                    </p>
                    <?php foreach ($theme as $t) : ?>
                        <p><b>Cơ sở 2:</b><br>
                            <span>
                                <?= $t['theme_add'] ?>
                            </span>
                        </p>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid footer-bottom">
        <div class="text-center">
            <p>Mã số doanh nghiệp: 0123456789. Giấy chứng nhận đăng ký doanh nghiệp do Sở Kế hoạch và Đầu tư TP Hà Nội cấp lần đầu ngày 26/06/2024.</p>
        </div>
    </div>
</footer>
</main>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://kenwheeler.github.io/slick/slick/slick.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>



<!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->

<script type="text/javascript">
    $(document).ready(function() {
        $('.your-class').slick({
            slidesToShow: 6,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
        });
    });
</script>
<script>
    $('.autoplay').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        dots: true,
        centerMode: true,
        focusOnSelect: true,
        autoplay: true,
        autoplaySpeed: 2000,
    });
</script>
</body>

</html>
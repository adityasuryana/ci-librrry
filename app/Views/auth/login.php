<?php
echo view('partials/header');
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-xl-4 col-lg-6 col-md-8 col-sm-12 col-12 position-absolute top-50 start-50 translate-middle">
            <div class="card book-shelf m-2 p-4">
                <h2 class="text-center fw-bold mb-4">Librrry</h2>
                <form action="<?= url_to('login') ?>" class="user" method="post">
                    <?= csrf_field() ?>

                    <div class="form-group">
                        <label class="fw-bold" for="inputTitle">Username or Email</label>
                        <input type="text" class="border border-black rounded-0 w-100 mb-2 p-1" name="login" placeholder="">
                    </div>
                    
                    <div class="form-group">
                        <label class="fw-bold" for="inputTitle">Password</label>
                        <input type="password" name="password" class="border border-black rounded-0 w-100 mb-4 p-1" placeholder="">         
                    </div>

                    <button type="submit" class="btn border border-black rounded-0 w-100">Login</button>
                </form>
            </div>
            
            <div class="m-4">
                <a href="<?= url_to('register') ?>" >Register</a>
            </div>
            
        </div>
    </div>
</div>
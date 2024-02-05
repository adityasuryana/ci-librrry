<?php
echo view('partials/header');
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-xl-4 col-lg-6 col-md-8 col-sm-12 col-12 position-absolute top-50 start-50 translate-middle">
            <div class="card book-shelf m-2 p-4">
                <h2 class="text-center fw-bold mb-4">Librrry</h2>
                <form action="<?= url_to('register') ?>" class="user" method="post">
                    <?= csrf_field() ?>

                    <div class="form-group">
                        <label for="email" class="fw-bold" for="inputTitle">Email</label>
                        <input type="email" class="border border-black rounded-0 w-100 mb-2 p-1" name="email" value="<?= old('email') ?>">
                    </div>

                    <div class="form-group">
                        <label for="username" class="fw-bold" for="inputTitle">Username</label>
                        <input type="text" class="border border-black rounded-0 w-100 mb-2 p-1" name="username" value="<?= old('username') ?>">
                    </div>
                    
                    <div class="form-group">
                        <label for="password" class="fw-bold" for="inputTitle">Password</label>
                        <input type="password" name="password" class="border border-black rounded-0 w-100 mb-4 p-1" autocomplete="off">         
                    </div>

                    <div class="form-group">
                        <label for="pass_confirm" class="fw-bold" for="inputTitle">Repeat Password</label>
                        <input type="password" name="pass_confirm" class="border border-black rounded-0 w-100 mb-4 p-1" autocomplete="off">         
                    </div>

                    <button type="submit" class="btn border border-black rounded-0 w-100">Register</button>
                </form>
            </div>
            
            <div class="m-4">
                <a href="<?= url_to('login') ?>" >Login</a>
            </div>
            
        </div>
    </div>
</div>
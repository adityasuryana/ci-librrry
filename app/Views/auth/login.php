<?php
echo view('partials/header');
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-6 position-absolute top-50 start-50 translate-middle">
            <div class="card bg-white m-2 p-4">
                <h2>Librrry</h2>
                <form action="<?= route_to('login') ?>"  class="user" method="post">
                                        <?= csrf_field() ?>
 
                                        <?php if ($config->validFields === ['email']): ?>
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-user <?php if(session('errors.login')) : ?>is-invalid<?php endif ?>"
                                                    name="login" placeholder="<?=lang('Auth.email')?>">
                                                <div class="invalid-feedback">
                                                    <?= session('errors.login') ?>
                                                </div>
                                            </div>
                                        <?php else: ?>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user <?php if(session('errors.login')) : ?>is-invalid<?php endif ?>"
                                                        name="login" placeholder="<?=lang('Auth.emailOrUsername')?>">
                                                <div class="invalid-feedback">
                                                    <?= session('errors.login') ?>
                                                </div>
                                            </div>
                                        <?php endif; ?>
 
                                        <div class="form-group">
                                            <input type="password" name="password" class="form-control form-control-user <?php if(session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?=lang('Auth.password')?>">
                                            <div class="invalid-feedback">
                                                <?= session('errors.password') ?>
                                            </div>
                                        </div>
 
                                        <?php if ($config->allowRemembering): ?>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox small">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck"  <?php if(old('remember')) : ?> checked <?php endif ?> >
                                                    <label class="custom-control-label" for="customCheck"><?=lang('Auth.rememberMe')?></label>
                                                </div>
                                            </div>
                                        <?php endif; ?>
                                        <button type="submit" class="btn btn-primary btn-user btn-block"><?=lang('Auth.loginAction')?></button>
                                         
                                    </form>
                <!-- <form action="" method="post">

                    
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" id="email" value="<?= old('email') ?>" required>
                    </div>
                            
                    <div class="mb-2">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="password" required>
                    </div>
                </form> -->
            </div>
        </div>
    </div>
</div>
<?php
require_once 'init.php';

$userModel = new UserModel();

if ($userModel->isAuth()) {
    header('Location: /index.php');
}

$categoryModel = new CategoryModel();
$formModel = new SignupForm();
$formModel->checkSignupForm();

$content = [
    'path' => 'views/content/signup.php',
    'models' => [
        'categoryModel' => $categoryModel,
        'formModel' => $formModel,
        'userModel' => $userModel
    ]
];

echo Template::render('views/base.php', ['title' => 'Регистрация', 'content' => $content]);
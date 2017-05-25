<?php
require_once 'init.php';

$errors = [];

$database = new Database();

$categoryFinder = new CategoryFinder($database);
$categories = $categoryFinder->findCategories();

$form = new LoginForm();

if ($form->isSubmitted()) {
    $form->validate();
    $errors = $form->getAllErrors();

    if ($form->isValid()) {
        $formdata = $form->getFormdata();
        $user = new User($database, $formdata['email'], $formdata['password']);
        $errors = $user->authErrors;
    }
}
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Вход</title>
    <link href="css/normalize.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

<?= includeTemplate('templates/header.php') ?>
<?= includeTemplate('templates/login.php', ['categories' => $categories, 'formdata' => $form->getFormdata(), 'errors' => $errors]) ?>
<?= includeTemplate('templates/footer.php', ['categories' => $categories]) ?>

</body>
</html>

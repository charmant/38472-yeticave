<?php
use yeticave\services\Formatter;

$categoryModel = $data['categoryModel'];
$categories = $categoryModel->finder->findCategories();

$userModel = $data['userModel'];
$user_id = $userModel->getUserdata()['id'];

$betModel = $data['betModel'];
$my_bets = $betModel->finder->findBetsByUser($user_id);
?>

<main>
    <nav class="nav">
        <ul class="nav__list container">
            <?php foreach ($categories as $category): ?>
                <li class="nav__item">
                    <a href="all-lots.html"><?= $category->name ?></a>
                </li>
            <?php endforeach; ?>
        </ul>
    </nav>
    <section class="rates container">
        <h2>Мои ставки</h2>
        <table class="rates__list">
            <?php foreach ($my_bets as $my_bet): ?>
                <tr class="rates__item">
                    <td class="rates__info">
                        <div class="rates__img">
                            <img src="<?= $my_bet->lot_image ?>" width="54" height="40"
                                 alt="<?= $my_bet->lot_title ?>">
                        </div>
                        <h3 class="rates__title"><a
                                    href="lot.php?id=<?= $my_bet->lot_id ?>"><?= $my_bet->lot_title ?></a></h3>
                    </td>
                    <td class="rates__category">
                        <?= $my_bet->category_name ?>
                    </td>
                    <td class="rates__timer">
                        <div class="timer timer--finishing">
                            <?= Formatter::calculateRemainingTime($my_bet->lot_date_close) ?>
                        </div>
                    </td>
                    <td class="rates__price">
                        <?= $my_bet->rate . ' p.' ?>
                    </td>
                    <td class="rates__time">
                        <?= Formatter::formatTime(strtotime($my_bet->date_add)) ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>
    </section>
</main>

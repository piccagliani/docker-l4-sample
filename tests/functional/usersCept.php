<?php
$I = new FunctionalGirl($scenario);
$I->wantToTest('list users');

$I->amOnPage('/users');
$I->see('Bill Evans', '#users tbody tr:nth-child(1)');
$I->see('Thelonius Monk', '#users tbody tr:nth-child(2)');
$I->see('Bud Powell', '#users tbody tr:nth-child(3)');
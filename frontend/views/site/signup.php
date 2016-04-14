<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out the following fields to signup: <?php if(isset($message)) echo $message ?></p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'form-signup', 'options'=> ['enctype'=> 'multipart/form-data']]); ?>

            <?= $form->field($model, 'matricule')->textInput(['autofocus' => true]) ?>
            <?= $form->field($model, 'role') ->dropDownList(
                ['Student'=>'Student' , 'Teacher'=>'Teacher' ],           // Flat array ('id'=>'label')
                ['prompt'=>'Choose your rule']    // options
            );
            ?>

            <?= $form->field($model,'file')->fileInput(); ?>


            <?= $form->field($model, 'username')?>

                <?= $form->field($model, 'email') ?>

                <?= $form->field($model, 'password')->passwordInput() ?>

                <div class="form-group">
                    <?= Html::submitButton('Signup', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>

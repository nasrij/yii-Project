<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Cours */
/* @var $form ActiveForm */
?>
<div class="Add_Cours">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'texte') ?>
        <?= $form->field($model, 'id_att') ?>
        <?= $form->field($model, 'id_ens') ?>
        <?= $form->field($model, 'id_g') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- Add_Cours -->

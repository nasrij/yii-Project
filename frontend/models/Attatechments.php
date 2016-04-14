<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "attatechments".
 *
 * @property integer $id
 * @property string $attatechment
 */
class Attatechments extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'attatechments';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['attatechment'], 'required'],
            [['attatechment'], 'string', 'max' => 200]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'attatechment' => 'Attatechment',
        ];
    }
}

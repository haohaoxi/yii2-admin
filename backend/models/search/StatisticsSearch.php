<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Statistics;

/**
 * StatisticsSearch represents the model behind the search form of `backend\models\Statistics`.
 */
class StatisticsSearch extends Statistics
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'admin_id', 'created_at'], 'integer'],
            [['admin_name', 'ip', 'phone_model', 'phone_size'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Statistics::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'admin_id' => $this->admin_id,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'admin_name', $this->admin_name])
            ->andFilterWhere(['like', 'ip', $this->ip])
            ->andFilterWhere(['like', 'phone_model', $this->phone_model])
            ->andFilterWhere(['like', 'phone_size', $this->phone_size]);

        return $dataProvider;
    }
}

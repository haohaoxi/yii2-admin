<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Advertcontent;

/**
 * AdvertcontentSearch represents the model behind the search form of `backend\models\Advertcontent`.
 */
class AdvertcontentSearch extends Advertcontent
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'admin_id', 'enum_id', 'content_created_at', 'content_updated_at'], 'integer'],
            [['content_js', 'content_image', 'content_url'], 'safe'],
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
        $query = Advertcontent::find();

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
            'enum_id' => $this->enum_id,
            'content_created_at' => $this->content_created_at,
            'content_updated_at' => $this->content_updated_at,
        ]);

        $query->andFilterWhere(['like', 'content_js', $this->content_js])
            ->andFilterWhere(['like', 'content_image', $this->content_image])
            ->andFilterWhere(['like', 'content_url', $this->content_url]);

        return $dataProvider;
    }
}

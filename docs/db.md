# DB Document


### User
| column     |  |
|:-----------|:------------|
| name    	 | string      |
| email      | string      |
| password   | string	   |

- ユーザの登録方法


### Post
| column     |  |
|:-----------|:------------|
| title    	 | string      |
| comment    | text        |
| category_id| integer     |
| user_id    | integer     |

- タグの関係を考慮


### Tag
| column     |  |
|:-----------|:------------|
| name    	 | string      |


- 同一のタグは同一のものとしてカウント
- 例：イーロンマスク

### Category
| column     |  |
|:-----------|:------------|
| name    	 | string      |


- インフォグラフィックでどんなカテゴリーか可視化する
- アート/デザイン/人生
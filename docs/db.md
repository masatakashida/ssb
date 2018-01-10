# DB Document

```
# 論理名称

## フィールド

- 物理名称, 型, オプション, 論理名称

## インデックス

- 対象フィールド
```

# ユーザー
## フィールド
- ID, id, integerm not null
- メールアドレス, email, string, not null



## インデックス
- id


# 感動したポスト

## フィールド
ID, id, integer, not null

## インデックス
# 

# タグ
## フィールド
ID, id, integer, not null

## インデックス
# 

# カテゴリー
## フィールド
ID, id, integer, not null

## インデックス
# 




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
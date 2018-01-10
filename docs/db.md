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
- 名前, name, string, not null
- プロフィール画像, image, string
- プロフィール文章, profile, text
- 場所, place, string, not null default ''
- URL, url, string, not null default ''

## インデックス
- id


# 感動したポスト
## フィールド
- ID, id, integer, not null
- お気に入りの言葉, love_word, string, not null
- ハッシュタグ, tag, string, not null
- 言葉に対する想い, thought, text, not null
- カテゴリー, category,string not null
- ユーザID, user_id, integer, not null

## インデックス
- id
- word
- tag
- category


# コメント
## フィールド
- ID, id, integer, not null
- コメント, comment, text, not null
- ポストID, post_id, integer, not null

## インデックス
- id
- post_id


# カテゴリー
## フィールド
- ID, id, integer, not null
- 名前, name, string, not null
- 画像, image, string, not null

## インデックス
- id

# ユーザー関係
## フィールド
- ID, id, integer, not null
- フォローID, follwer_id, integer, not null
- フォロワーID, follwed_id, integer, not null

## インデックス
- id
- follwer_id
- follwed_id


# いいね
## フィールド
- ID, id, integer, not null
- ユーザID, user_id, not null
- ポストID, post_id, not null


## インデックス
- id
- user_id
- post_id


--------------

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

#todo

- ログイン画面修正
- postの画像を投稿できるように
  - api でランダムが像にしたい
- pagenageを作成する
- flash
- 投稿数
- コメント機能
- twitterなどと連携して

- デザイン選定
  - kibela
  - 緑のやつ


## deb設計

- User
  - email
  - pass

- Post
  - title
  - body
  - user_id

- Category
  - name
  - parent_id
  - user_id # カテゴリーがユーザー毎に作るよね

- PostCategory
  - belongs_to post
  - belongs_to category



## マークダウン

- 参考記事

https://qiita.com/hkengo/items/978ea1874cf7e07cdbfc
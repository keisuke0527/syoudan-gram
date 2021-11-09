# README
<img width="1426" alt="R画像" src="https://user-images.githubusercontent.com/82218591/140890491-61247ca7-933b-4288-b175-67c048c675e5.png" width="123" height=456px >


## 開発環境

フロントエンド：HTML&CSS / JavaScript
バックエンド：Ruby / Ruby on Rails
環境： GitHub/ Visual Studio Code / Trello


## アプリケーション概要
チームで商談や案件を管理し、
相互にアドバイスなどのフィードバックをし合うアプリです。


### 1. トップページ




ヘッダーの新規投稿ボタンから記事投稿画面に移動します
タイトル、都道府県、走行距離、できごと、画像タイトル(任意)、画像(任意)を入力することで、記事の投稿ができます
 

### 2. ログイン、ログアウト
（詳細）
・Ruby on railsのgemである『device』を使用し実装しました。
・バリデーションを行い必須項目情報の抜け漏れを防止をしました。
・バリデーションを行い入力文字数や半角、英数字等の制限をかけました。


### 3. ユーザー登録機能
（詳細）
・Ruby on railsのgemである『device』を使用し実装しました。
・バリデーションを行い必須項目情報の抜け漏れを防止をしました。
・バリデーションを行い入力文字数や半角、英数字等の制限をかけました。


### 4. 詳細ページ機能
（詳細）
・投稿日や経過日を記載して進捗を確認するようにする
・重要な結論がわかる項目にしぼり表示



## 【工夫機能】

### 詳細画面でのチャット

（詳細）
・画面の右サイドにはチャット機能をつけてリアルタイムでやりとりができるように設定
・コメントにはプルダウンでタイトルを選び項目を絞れるようにした
 

### サイドバー
ログインユーザーのアイコン表示
自分の商談の管理



### KPI等のグラフ表示

自分が投稿した記事には、記事の右上にプルダウンボタンが表示されます
このプルダウンボタンをクリックして表示されるメニューから、記事の編集・削除ができます

## 制作背景
実際に営業現場で使うことをイメージしながら作成しました。
デザインにおいては『商談を追客すること』という固く重いイメージを払拭したく、紫を基調とした色合いにし、柔らかいテーマを意識しました。
また、個別の商談におけるフィードバックやアドバイスをリアルタイムかつ、チャットにすることで、よりコミュニケーションが促進されるように意識しました。
デザイン性、機能性、両軸における課題は多々ありますが、使用する人をイメージしながら少しでも使いやすくなるよう意識し作成しました。


# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
| name               | string              | null: false             |
| profile            | text                | null: false             |
| position           | text                | null: false             |

### Association

* has_many :opportunity
* has_many :comments

## opportunity table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| phase_id                            | integer    | null: false       |
| motivation_id                       | integer    | null: false       |
| bottle_neck                         | text       | null: false       |
| next_action                         | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| opportunity | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :opportunity
- belongs_to :user

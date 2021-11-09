# README
<img width="1426" alt="R画像" src="https://user-images.githubusercontent.com/82218591/140890491-61247ca7-933b-4288-b175-67c048c675e5.png" width="123" height=456px >


## 開発環境

フロントエンド：HTML&CSS / JavaScript
バックエンド：Ruby / Ruby on Rails
環境： GitHub/ Visual Studio Code / Trello
<br>
<br>
<br>
## アプリケーション概要
チームで商談や案件を管理し、
相互にアドバイスなどのフィードバックをし合うアプリです。  
<br>
<br>
## 制作背景
実際に営業現場で使うことをイメージしながら作成しました。  
デザインにおいては『商談を追客すること』という固く重いイメージを払拭したく、紫を基調とした色合いにし、柔らかいテーマを意識しました。  
また、個別の商談におけるフィードバックやアドバイスをリアルタイムかつ、チャットにすることで、よりコミュニケーションが促進されるように意識しました。  
デザイン性、機能性、両軸における課題は多々ありますが、使用する人をイメージしながら少しでも使いやすくなるよう意識し作成しました。  
<br>
<br>
## 機能一覧
<br>
<br>

### 1. トップページ  
ヘッダーの
 <img width="1076" alt="スクリーンショット 2021-11-09 17 53 35" src="https://user-images.githubusercontent.com/82218591/140892951-c843186e-277b-465b-97f0-3158f7882901.png">

### 2. ログイン、ログアウト
（詳細）  
Ruby on railsのgemである『device』を使用し下記機能を実装しました。  
・サインアップ機能  
・サインイン機能  
・アカウント編集機能  
・パスワード変更機能  
・メール認証機能  
<br>
<br>

### 3. ユーザー登録、商談登録機能

<img width="1005" alt="スクリーンショット 2021-11-09 18 04 38" src="https://user-images.githubusercontent.com/82218591/140894667-f8f2358a-10f4-4df9-91c2-fcc2224e9067.png">

（詳細）  
・バリデーションを行い必須項目情報の抜け漏れを防止をしました。  
・バリデーションを行い入力文字数や半角、英数字等の制限をかけました。  
・各登録画面にはエラー表示がされるよう設定しました。  
・簡易項目にはプルダウンにて選択型にしました。  

<br>
<br>

### 4. 詳細ページ機能
（詳細）    
・ログイン状態では『編集』ボタンを表示させ、ログインをしてない状態では表示されないよう条件分岐しています。  
・投稿日や経過日を記載して進捗を確認できるよう表示しました。　　
・重要な結論がわかる項目にしぼり表示しました
<br>
<br>

## 【工夫機能】
<br>
<br>
### 詳細画面でのチャット

<img width="1009" alt="スクリーンショット 2021-11-09 18 15 33" src="https://user-images.githubusercontent.com/82218591/140896303-5b6e7ac7-12e8-4c67-8e0b-ab481d71092a.png">
（詳細）  
・画面の右サイドにはチャット機能をつけてリアルタイムでやりとりができるように設定
・コメントにはプルダウンでタイトルを選び項目を絞れるようにした
 <br>
 <br>

### サイドバー
<img width="818" alt="スクリーンショット 2021-11-09 18 13 25" src="https://user-images.githubusercontent.com/82218591/140895951-03dd6c2d-fc87-4573-9db0-f9709292fba0.png">
ログインユーザーのアイコン表示
自分の商談の管理
<br>
<br>
### KPI等のグラフ表示

<img width="1050" alt="スクリーンショット 2021-11-09 18 14 15" src="https://user-images.githubusercontent.com/82218591/140896525-c8592450-736f-452d-bdf2-54d67a4c5df8.png">
自分が投稿した記事には、記事の右上にプルダウンボタンが表示されます
このプルダウンボタンをクリックして表示されるメニューから、記事の編集・削除ができます

## 制作背景
実際に営業現場で使うことをイメージしながら作成しました。
デザインにおいては『商談を追客すること』という固く重いイメージを払拭したく、紫を基調とした色合いにし、柔らかいテーマを意識しました。
また、個別の商談におけるフィードバックやアドバイスをリアルタイムかつ、チャットにすることで、よりコミュニケーションが促進されるように意識しました。
デザイン性、機能性、両軸における課題は多々ありますが、使用する人をイメージしながら少しでも使いやすくなるよう意識し作成しました。
<br>
<br>
<br>

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

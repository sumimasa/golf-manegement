# アプリ名
golf-manegement

# 概要
このアプリではユーザーに応じたスコアの管理、YouTubeの動画を保存、GDOの予約サイトででゴルフ場の予約を行うことができます。

# 本番環境
<https://golf-manegement.herokuapp.com/>

id:sumimasa-golf

pass:masaki190

## ログイン情報

メールアドレス: masaki@test.com

パスワード: masaki123




# 制作背景
昨今のコロナによる影響でゴルフを始める人が増えてきています。このアプリはゴルフを始めたばかりで、「もっと上達したい」という方々に向けて制作しました。私自身もゴルフが趣味ですが、あまり上手とは言えません。練習、ホールを回る時にこういうアプリがあったらいいなと思い、このアプリの制作に至りました。

# 課題
・スコアシートが紙のため管理が難しい

・ラウンド中にメモを取りたい

・スコアの変動をグラフなどで見れるようにしたい

・練習、ホールで見たい動画をまとめておきたい

# 課題解決方法
・スコアの管理は記入、編集ができるようにしました

[![Image from Gyazo](https://i.gyazo.com/13169e0015ff9025386564dedbb90f9a.gif)](https://gyazo.com/13169e0015ff9025386564dedbb90f9a)

[![Image from Gyazo](https://i.gyazo.com/c476c9f32fb7bcafb928be42a6cb9bfa.jpg)](https://gyazo.com/c476c9f32fb7bcafb928be42a6cb9bfa)

・メモも記入、編集ができるようにしました。

・スコアの変動を折線グラフで見れるようにしました。

[![Image from Gyazo](https://i.gyazo.com/2531b29f864747bd16258414a23d16f1.jpg)](https://gyazo.com/2531b29f864747bd16258414a23d16f1)

・練習、ホールで見たい動画をYouTubeでリンクをコピーし保存できるようにしました。その際動画の目的がわかるようにタイトルを付けれるようにしました。

[![Image from Gyazo](https://i.gyazo.com/24b157ab09981270b53e88a0a311aca4.gif)](https://gyazo.com/24b157ab09981270b53e88a0a311aca4)

# 工夫したポイント
スコア管理において工夫したのはプレーしながら、ラウンドが終わってからのどちらでもスコアの記入を行えるようにしたことです。

もう一つはYouTubeの動画を保存するときにタイトルを付けれるようにしたことでこの動画の目的がわかるようにしたことです。

# 開発環境

## バックエンド
Ruby on Rails,Ruby

## フロントエンド
jQuery,Sass,HTML,Css

## データベース
MySQL,SequelPro

## ソース管理
GitHub,GitHubDesktop

## テスト
Rspec(単体モデルテストコードのみ)

## エディタ
VSCode


# 課題や今後実装したい機能
・スコアを入力できるようにしたい（パー、バーディー、ボギーなど）
・カメラで撮影しスイング軌道のチェックをできるようにしたい


# DB設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |

### Association

- has_many :scores
- has_many :videos
- has_many :sns_credentials

## sns_credentials テーブル

| Column   | Type       | Options                       |
| -------- | ---------- | ----------------------------- |
| provider | string     |                               |
| uid      | string     |                               |
| user     | references | null: false,foreign_key: true |

### Association

- belongs_to :user,optional: true

## scores テーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| score_1h    | integer    | null: false                   |
| score_2h    | integer    | null: false                   |
| score_3h    | integer    | null: false                   |
| score_4h    | integer    | null: false                   |
| score_5h    | integer    | null: false                   |
| score_6h    | integer    | null: false                   |
| score_7h    | integer    | null: false                   |
| score_8h    | integer    | null: false                   |
| score_9h    | integer    | null: false                   |
| score_10h   | integer    | null: false                   |
| score_11h   | integer    | null: false                   |
| score_12h   | integer    | null: false                   |
| score_13h   | integer    | null: false                   |
| score_14h   | integer    | null: false                   |
| score_15h   | integer    | null: false                   |
| score_16h   | integer    | null: false                   |
| score_17h   | integer    | null: false                   |
| score_18h   | integer    | null: false                   |
| total_score | integer    |                               |
| course_name | string     | null: false                   |
| play_date   | date       | null: false                   |
| memo        | text       |                               |
| user        | references | null: false,foreign_key: true |

### Association

- belongs_to :user
- belongs_to :count

## videos テーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| title       | text       | null: false                   |
| youtube_url | string     | null: false                   |
| user        | references | null: false,foreign_key: true |

### Association

- belongs_to :user

# ER図

![golf](https://user-images.githubusercontent.com/91579058/143410380-9ed5ebcc-c3b4-4fa8-960f-ef673f982a07.png)


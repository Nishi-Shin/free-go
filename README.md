# Free-go

# アプリ名
・Freeーgo

# 概要
ユーザー登録機能  
ログイン機能(ゲストログイン機能)  
ユーザーの編集機能  
投稿機能(編集、削除)  
投稿数のカウント機能  
投稿・編集時の日時表示機能  
検索機能  
投稿一覧表示の際のページネーション機能  
いいね機能  

# 本番環境
URL:http://54.168.139.170/  
簡単(ゲスト)ログイン機能あり

・テストアカウント

Name: test_user1  
Mail: test_user1@gmail.com  
Password: 123456  

Name: test_user2  
Mail: test_user2@gmail.com  
Password: 123456  

# 制作背景
車いす生活の方々が、健常者の方と同じように外で楽しめる、自由に生きれるようにと思い作成したサイトです。親族が車いす生活になったのをきっかけに障害を持たれた方の事を調べる、知る事が増えました。その中で、一番感じたのはハンディキャップを背負うことにより消極的、ネガティブになってしまう人が多いということです。知っていればハンディキャップを背負っていてもできることは沢山あります。そういった方や、外で自由に生活するというのを諦めてしまっている方に向けて、車椅子でも行ける施設や飲食店を共有できるサイトを作成しました。

# DEMO
・ログイン画面/新規登録画面  
https://gyazo.com/c1c9645deaab7dd408d9b493b37106a6  
https://gyazo.com/d5e2a2883b8d507bcbdb16c992b9e276  

・投稿画面(一覧)  
https://gyazo.com/9ed558b329955eb8e706070b3615f14a  
https://gyazo.com/e28b56d0a188750d4ae26761d889bf65  

・投稿の削除  
https://gyazo.com/8377236826f6ffa2437e951cca11412f  

・検索機能  
https://gyazo.com/7e79e6b4b5ff485608bbc41a462ca47f  

# 工夫したポイント
Dockerを使用して開発を行いました。dockerを使用している企業様が増えているというのと、使い方を分かってしまえば効率的に開発が進むため使用しました。ターゲットは、20~40歳代の車椅子生活の人や高齢で車いすで生活している人の子供や孫が使う事を想定し、若い人や仕事をしていて忙しい人に使ってもらえるように、シンプルでシックなイメージのviewにしました。

# 開発環境
Ruby 2.5.8  
Ruby on Rails 5.2.2  
MYSQL  
GitHub Git  
Docker  
AWS  
Visual Studio Code  

# 今後実装したい機能
・ぐるなびAPI,GoogleAPIといったAPIの実装

# DB設計

# usersテーブル
| Column | Type | Options |
|:------:|:----:|:-------:|
| username         | string | null: false |
| profile          | text   | null: false |
| profile_image_id | string | null: false |
| email            | string | null: false |
| password         | string | null: false |

Association  
・has_many :posts  
・has_many :likes  

# postsテーブル
| Column | Type | Options |
|:------:|:----:|:-------:|
| user_id  | integer | null: false, foreign_key: true |
| title    | string  | null: false |
| body     | text    | null: false |
| image_id | string  | null: false |

Association  
・belongs_to :user  
・has_many :likes  

# likesテーブル

| Column | Type | Options |
|:------:|:----:|:-------:|
| user_id  | integer | null: false, foreign_key: true |
| post_id  | integer | null: false, foreign_key: true |

Association  
・belongs_to :user  
・belongs_to :post  

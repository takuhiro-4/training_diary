# アプリケーション名: training_diary

# アプリケーションの概要: 該当の日付にその日行ったことを記載できるアプリです。

# URL: https://training-diary-01.herokuapp.com/

# 利用方法: トップページの「新しい日記」をクリックして、タイトルと内容と日付・時間を入力してカレンダーに記録を残して後で振り返れるようにしております。

# 目指した課題解決: ボディーメイク初心者の食事・トレーニングの内容を簡単に記録し比較したい。その日の食事・トレーニングの内容を記録することにより、食生活やトレーニングの内容がどのように変化したかを比較することができるようになります。

# 洗い出した要件: [要件定義](https://docs.google.com/spreadsheets/d/12eOvsLHEZqSqavUDCQgH2xKjVlJZMxbIq2Q2kVgxHlA/edit#gid=282075926)

# 実装した機能についてのGIFと説明:
[トップページ](https://gyazo.com/6362fb069cbb0a77cf67e1bead9d70bc)
カレンダーの表示をしております。日記の内容は日付の中のタイトルをクリックすると詳細ページに遷移して見れます。
[新規登録](https://gyazo.com/688cb0c6368e537e61da0063b32b8d48)
新しい日記を登録するページです。更新をクリックすると人気登録が完了します。
[詳細表示](https://gyazo.com/40ad00e594739867ab9b072b98c4abfa)
書いた日記の詳細を見るページです。改行や段落がある文章を保存してもそのまま表示できます。
消去はこのページで行います。
[編集](https://gyazo.com/d854c73a4ee2d62ea21bdb36dc872af3)
日記の内容を編集するページです。更新をクリックすると編集が完了します。

# データベース設計

## eventテーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| name    | string     | nill: false |
| content | text       | nill: false |

# ローカルでの動作方法:ローカル環境に必要なコマンドは特にありません。
rails 6.0.0
データベース: MySQL
gem simple_calendar
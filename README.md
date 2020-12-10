Memolution
====

Overview

## アプリケーション概要
テキストや画像を使ってメモを作成し、保存する事が出来ます。

## URL
https://memolutions.herokuapp.com/

## テスト用アカウント
email: test@test.com
password: abc123 

## 利用方法
ユーザー登録を行い、テキストや情報の選択、画像の添付による
メモを作成し保存する事が出来ます。

## 目指した課題解決
このアプリケーションを通して自身だけではなく、またただのメモではなく
家族間の新しいコミュニケーションツールを目指しました。
やる事の記録や買い物メモなどとして使用し、用事忘れや買い忘れを
防ぎます。またもし買い忘れなどがあった場合
メッセージ機能を使用してコミュニケーションを取れる様にと
考えました。コミュニケーションは別のツール、メモはこのツールと
使い分ける煩わしさを低減させる事を目的としています。

## 洗い出した要件




## 実装した機能についてのGIFと説明

## 実装予定の機能

## データベース設計(ER図)


## ローカルでの動作方法






# テーブル設計

## usersテーブル

|   Column           |  Type      |   Options   |
| ------------------ | ---------- | ----------- |
| nick_name          | string     | null: false |
| email              | string     | null: false |
| encrypted_password | string     | null: false |

### Association

- has_one : memo
- has_many : room_users
- has_many : rooms, through: room_users
- has_many : messages

## memosテーブル

|   Column         |  Type      |   Options                      |
| ---------------- | ---------  | ------------------------------ |
| title            | string     | null: false                    |
| text             | text       | null: false                    |
| amount           | integer    |                                |
| user             | references | null: false, foreign_key: true |
| category_id      | integer    | null: false                    |
| store_id         | integer    |                                |
| genre_id         | integer    |                                |
| when_id          | integer    | null: false                    |

### Association

- belongs_to : user

## roomsテーブル

| Column          | Type    | Options     |
| --------------- | ------  | ----------- |
| name            | string  | null: false |
| password_digest | string  | null: false |

### Association

- has_many : room_users
- has_many : users, through: room_users
- has_many : messages

## room_users テーブル

| Column  | Type        | Options                         |
| ------  | ----------  | ------------------------------  |
| user    | references  | null: false, foreign_key: true  |
| room    | references  | null: false, foreign_key: true  |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                         |
| ------- | ---------- | ------------------------------  |
| content | string     |                                 |
| user    | references | null: false, foreign_key: true  |
| room    | references | null: false, foreign_key: true  |

### Association

- belongs_to :room
- belongs_to :user
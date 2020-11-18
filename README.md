# テーブル設計

## usersテーブル

|   Column           |  Type      |   Options   |
| ------------------ | ---------- | ----------- |
| nickname           | string     | null: false |
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

| Column  | Type    | Options     |
| ------  | ------  | ----------- |
| name    | string  | null: false |

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
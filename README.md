# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :posts_users_likes
- has_many :posts
- has_many :comments_users_likes
- has_many :comments
- has_many :animals

## posts テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |
| animal | references | null: false, foreign_key: true |

### Association

- has_many :animals_posts
- has_many :animals, through: animals_posts
- has_many :posts_users_likes
- has_many :comments
- belongs_to :user

## posts_users_likes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| animal | references | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## comments テーブル

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| text   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- has_many :comments_users_likes
- belongs_to :post
- belongs_to :user

## comments_users_likes テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| comment | references | null: false, foreign_key: true |

### Association

- belongs_to :comment
- belongs_to :user

## animals テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| category    | string     | null: false                    |
| subcategory | string     | null: false                    |
| sex         | string     | null: false                    |
| prefecture  | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| post        | references | null: false, foreign_key: true |

### Association

- has_many :animals_posts
- has_many :posts, through: animals_posts
- belongs_to :user

## animals_posts テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| post   | references | null: false, foreign_key: true |
| animal | references | null: false, foreign_key: true |

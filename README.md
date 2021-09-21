# README

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
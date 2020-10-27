# database design

## users table

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| email           | string  | null: false |
| password        | string  | null: false |
| nickname        | string  | null: false |

### Association

- has_many :schedules
- has_many :one_days
- has_many :habits

## schedules table

| Column   | Type          | Options                         |
| -------- | ------------- | ------------------------------- |
| title    | string        | null: false                     |
| text     | text          |                                 |
| one_day  | integer       | null: false                     |
| habit    | integer       | null: false                     |
| user_id  | references    | null: false, foreign_key: true  |

### Association

- belongs_to :user
- has_many :one_days
- has_many :habits

## one_days table

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| day_name        | string     | null: false                    |
| concentration   | integer    | null: false                    | 
| interval        | integer    | null: false                    |
| starting_break  | time       | null: false                    |
| ending_break    | time       | null: false                    |
| user_id         | references | null: false, foreign_key: true |
| schedule_id     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :schedule

## habits table

| Column        | Type       | Options                         |
| ------------- | ---------- | ------------------------------- |
| habit_name    | string     | null: false                     |
| starting_date | date       | null: false                     |
| date_interval | integer    | null: false                     |
| alert_time    | time       | null: false                     |
| user_id       | references | null: false, foreign_key: true  |
| schedule_id   | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :schedule
## userテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false
|name|string|null: false
|e-mail|string|null: false, unique: true
|picture_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|

### Association
- has_many :pictures
- has_many :categories


## pictuerテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false
|image|string|
|comment|text|
|user_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|

### Association
- has_many :categories
- has_many :tags
- belongs_to :user



## categoryテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false
|grouop_name|string|null: false
|picture_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- has_many :pictures
- has_many :tags
- belongs_to :user


## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|picture_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|

### Association
- belongs_to :picture
- belongs_to :category


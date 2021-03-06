# DB設計

## users table

|Column|Type|Options|
|------|----|-------|
|gender|string||
|birth_year|integer||
|birth_month|integer||
|birth_day|integer||
|password|string|null: false|
|postal_code|integer|null: false|
|email|string|null:false|
|mail_magazine|integer|null: false|
|provider|string||
|uid|string||

### Association
- has_one :credit_card
- has_many :trades
- has_many :fav_shops
- has_many :fav_blands
- has_many :fav_stocks
- has_one :user_detail


## shippings table

|Column|Type|Options|
|------|----|-------|
|genere|integer|null: false|
|name|string|null: false|
|postal_code|integer|null: false|
|prefecture|string|null: false|
|address1|string|null: false|
|address2|string||
|phonenumber|integer|null: false|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user


## items_table

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|discription|string|null:false|
|gender|string||
|price|integer|null:false|
|material|string||
|origin|string||
|delivery_days|integer|null:false|
|wrapping|integer|null:false|
|shop_id|references|null:false , foreign_key: true|
|bland_id|references|null:false, foreign_key: true|

### Association
- has_many :stocks
- has_many :images
- belongs_to :category
- belongs_to :shop
- belongs_to :item
- belongs_to :brand
- belongs_to :cordinate

## shops_table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items
- has_many :trade

## categories_table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|depth|integer|null: false|
|parent_id|references|null: false|


### Association
- has_many :items


## brands_table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :items
- has_many :fav_shops


## cordinates_table

|Column|Type|Options|
|------|----|-------|
|item_1|references|null: false|
|item_2|references|null: false|
|item_3|references|null: false|
|item_4|references|null: false|


### Association
- has_many :items


## sizes_table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- belongs_to :stock


## trades_table

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
|status|integer|null: false|


### Association
- belongs_to :user
- belongs_to :stock

## images_table

|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item

##  stocks_table

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|size_id|references|null: false, foreign_key: true|
|color_id|references|null: false, foreign_key: true|
|count|integer|null: false|


### Association
- has_many :items
- has_many :trades
- has_many :sizes
- has_many :fav_stocks
- belongs_to :color


## credit_cards_table
|Column|Type|Options|
|------|----|-------|
|number|string|null: false|
|expire_month|integer|null: false|
|expire_year|integer|null: false|
|security_code|integer|null: false|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user

## fav_shops_table
|Column|Type|Options|
|------|----|-------|
|shop_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user

## fav_brands_table
|Column|Type|Options|
|------|----|-------|
|brand_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user

## fav_stocks_table
|Column|Type|Options|
|------|----|-------|
|stock_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :stock

## colors_table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :stocks

## user_details_table

|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|prefecture|stringr|null: false|
|address1|stringr|null: false|
|address2|stringr|null: false|
|phonenumber|stringr|null: false|
|user_id|references|null: false|


### Association
- belongs_to: user

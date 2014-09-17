class Dessert
include Mongoid::Document
field :name, type: String
field :serving_size, type: Float
field :calories, type: Float
field :calories_from_fat, type: Float
field :total_fat, type: Float
field :saturated_fat, type: Float
field :trans_fat, type: Float
field :cholesterol, type: Float
field :sodium, type: Float
field :carbohydrates, type: Float
field :dietary_fiber, type: Float
field :sugars, type: Float
field :protein, type: Float
field :vitamin_a, type: Float
field :vitamin_c, type: Float
field :calcium, type: Float
field :iron, type: Float

belongs_to :menu
end
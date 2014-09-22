class Soup
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
has_many :names
has_many :serving_sizes
has_many :calories
has_many :calories_from_fat
has_many :total_fats
has_many :saturated_fats
has_many :trans_fats
has_many :cholesterols
has_many :sodiums
has_many :carbohydrates
has_many :dietary_fibers
has_many :sugars
has_many :proteins
has_many :vitamin_as
has_many :vitamin_cs
has_many :calciums
has_many :irons
end

#Creation of the class "Soup" which operates with the other food categories to make up the menu

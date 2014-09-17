class Menu
  include Mongoid::Document
  field :title, type: String
  has_many :beverages
  has_many :breads
  has_many :breakfasts
  has_many :condiments
  has_many :desserts
  has_many :flatizzas
  has_many :salads
  has_many :salad_dressings
  has_many :sandwiches
  has_many :soups
  has_many :vegetables
end

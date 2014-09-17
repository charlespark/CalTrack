class Menu
  include Mongoid::Document
  field :title, type: String
  has_many :beverages, :breads, :breakfasts, :condiments, :desserts, :flatizzas, :salads, :salad_dressings, :sandwiches, :soups, :vegetables
end

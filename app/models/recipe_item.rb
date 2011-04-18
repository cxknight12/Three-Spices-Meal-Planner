# == Schema Information
# Schema version: 20110417205430
#
# Table name: recipe_items
#
#  id         :integer         not null, primary key
#  recipe_id  :integer
#  item_id    :integer
#  qty_needed :float
#  qty_type   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RecipeItem < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
end

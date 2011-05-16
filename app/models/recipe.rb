# == Schema Information
# Schema version: 20110417205430
#
# Table name: recipes
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  notes       :text
#  recipe_type :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :recipe_items
  has_many :items, :through => :recipe_items
end

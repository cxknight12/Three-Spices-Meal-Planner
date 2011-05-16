# == Schema Information
# Schema version: 20110417205430
#
# Table name: items
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  descr      :text
#  qty        :float
#  cost       :float
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Item < ActiveRecord::Base
  belongs_to :user
  has_many :recipe_items
  has_many :recipes, :through => :recipe_items
  
end

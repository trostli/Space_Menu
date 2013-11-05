class Item < ActiveRecord::Base
  attr_accessible :name, :price, :description, :menu_id

  validates :name, :price, :description, presence: true

  belongs_to :menu

end
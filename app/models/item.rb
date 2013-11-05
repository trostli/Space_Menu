class Item < ActiveRecord::Base
  validates :name, :price, :description, presence: true

  belongs_to :menu

end
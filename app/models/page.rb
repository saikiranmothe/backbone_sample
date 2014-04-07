class Page < ActiveRecord::Base
  attr_accessible :background_color, :font, :margin, :name, :padding, :title
  belongs_to :user
end

class Concert < ActiveRecord::Base
  has_many :purchases 
end

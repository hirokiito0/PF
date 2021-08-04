class Game < ApplicationRecord
  belongs_to :customer
  belongs_to :admin
  
end

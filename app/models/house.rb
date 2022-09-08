class House < ActiveRecord::Base
  has_many :reviews
  belongs_to :landload
end
class Topic < ApplicationRecord
  belongs_to :sub
  # has many is always plural
  has_many :comments

  #has one is always singular
  # has_one :comment 
end

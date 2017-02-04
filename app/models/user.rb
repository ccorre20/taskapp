class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :pw, presence: true
end

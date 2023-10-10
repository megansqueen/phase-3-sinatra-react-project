class Reviewer < ActiveRecord::Base
    has_many :reviews
    has_many :rides, through: :reviews
end
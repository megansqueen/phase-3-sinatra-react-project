class Review < ActiveRecord::Base
    belongs_to :ride
    belongs_to :reviewer
end
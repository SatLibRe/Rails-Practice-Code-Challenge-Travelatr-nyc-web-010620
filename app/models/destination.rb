class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def destinations_uniq_bloggers_age_average
        ages_arr = self.bloggers.uniq.map do |blogger|
            blogger.age
        end 
        ages_arr.inject{ |sum, el| sum + el }.to_f / ages_arr.size 
    end
end



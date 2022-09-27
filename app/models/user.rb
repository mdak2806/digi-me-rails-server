class User < ApplicationRecord

    has_secure_password
    # belongs_to :pet, optional: true
    has_one :pet
    has_many :scores

    # creating a method within the user model to calculate the total score for this user
    # def total_score
    #     # this self model gets the score for each individual user
    #     self.scores.sum(:level)
    # end

end

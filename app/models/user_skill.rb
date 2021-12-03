class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  belongs_to :proposal
end

class Proposal < ApplicationRecord
  belongs_to :request
  belongs_to :user
  has_many :user_skills
  validates :user, uniqueness: { scope: :request}
end

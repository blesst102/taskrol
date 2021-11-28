class Skill < ApplicationRecord
    has_many :user_skills, dependent: :destroy
    has_many :skills, through: :user_skills

    has_many :request_skills, dependent: :destroy
    has_many :requests, through: :request_skills
end

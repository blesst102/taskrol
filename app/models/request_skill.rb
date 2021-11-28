class RequestSkill < ApplicationRecord
  belongs_to :request
  belongs_to :skill
end

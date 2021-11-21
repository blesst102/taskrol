class Request < ApplicationRecord
  belongs_to :category
  belongs_to :requestoption
  has_many :proposals
  belongs_to :user

  validates :title, presence: true
  paginates_per 20
  

  def to_param
     title
  end
end

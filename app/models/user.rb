class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :trackable

         has_many :requests, dependent: :destroy
         has_many :proposals, dependent: :destroy
         has_many :reviews, dependent: :destroy
         has_many :user_skills, dependent: :destroy
         has_many :skills, through: :user_skills





         has_one_attached :avatar

         after_create :assign_default_role

        def assign_default_role
         if User.count == 1
          self.add_role(:admin) if self.roles.blank?
          self.add_role(:certified)
          self.add_role(:krol)
          self.add_role(:client)
         else 
          self.add_role(:client) if self.roles.blank?
          self.add_role(:krol)
         end
        end
end

class User < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  validates :email, uniqueness: true,
                    presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password, presence: true,
                       length: { in: 5..20 },
                       on: :create
  validates :password, length: { in: 5..20 },
                       allow_blank: true,
                       on: :update

  validates :username, presence: true

  has_many :ratings, dependent: :destroy
  has_one_attached :avatar
end

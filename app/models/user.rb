class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, authentication_keys: %i[login_key]

  belongs_to :plan, optional: true

  validates :login_key, uniqueness: true
  validates :name, presence: true

  def email_required?
    false
  end
end

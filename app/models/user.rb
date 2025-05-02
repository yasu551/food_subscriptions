class User < ApplicationRecord
  extend Enumerize

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, authentication_keys: %i[login_key]

  belongs_to :plan, optional: true
  has_many :deliveries, dependent: :restrict_with_exception

  enumerize :delivery_cycle, in: %w[weekly bi_monthly]

  validates :login_key, uniqueness: true
  validates :name, presence: true

  after_update :create_delivery!, if: :delivery_creatable?

  def email_required?
    false
  end

  private

  def delivery_creatable?
    return false if [ address, delivery_cycle, plan_id ].any?(&:blank?)
    return true if !deliveries.exists?

    !deliveries.with_status(:preparing).exists?
  end

  def create_delivery!
    scheduled_on =
      case delivery_cycle
      when 'weekly'
        1.week.since
      when 'bi_monthly'
        2.weeks.since
      else
        raise ArgumentError, "Invalid delivery_cycle: #{delivery_cycle}"
      end
    deliveries.create!(scheduled_on:, time_slot: 'am')
  end
end

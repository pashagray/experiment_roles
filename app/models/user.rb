class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JWTBlacklist

  # Associations

  has_one :investor_role
  has_one :debtor_role

  # Scopes

  scope :investors,     -> { joins(:investor_role) }
  scope :debtors,       -> { joins(:debtor_role) }
  scope :with_roles,    -> { where(id: (investors.pluck(:id) + debtors.pluck(:id)).uniq) }
  scope :without_roles, -> { where.not(id: with_roles.pluck(:id)) }

  # Instance methods

  def investor?
    !!investor_role
  end

  def debtor?
    !!debtor_role
  end
end

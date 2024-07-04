class Company < ApplicationRecord
  after_create :create_tenant

  validates :subdomain, presence: true, uniqueness: { case_sensitive: false }

  def create_tenant
    Apartment::Tenant.create subdomain
    Apartment::Tenant.switch! subdomain
    Apartment::Tenant.seed
    save
  end
end

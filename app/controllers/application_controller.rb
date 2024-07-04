class ApplicationController < ActionController::Base

  before_action :switch_tenant

  def switch_tenant
    # Extract subdomain from request
    subdomain = request.subdomain

    # Switch to the tenant schema
    company = Company.find_by_subdomain(subdomain)

    if company.present?
      Apartment::Tenant.switch!(subdomain) if subdomain.present?
    end

  end
end

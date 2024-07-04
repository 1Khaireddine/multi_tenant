class HomeController < ApplicationController
  def index
    @companies = Company.all
  end

  def connect_to
    redirect_to root_url(subdomain: params[:company_subdomain]), allow_other_host: true
  end
end

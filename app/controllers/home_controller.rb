class HomeController < ApplicationController
  def index
  end

  def shop
    @user = User.find_by_subdomain(request.subdomain)
    if @user.nil?
      redirect_to root_url :host => request.domain
    else
      render 'shop/index', :as => '/'
    end
  end
end

class HomeController < ApplicationController
  def index
  end

  def shop
    @user = User.find_by_subdomain(request.subdomain)
    if @user.nil?
      redirect_to root_url :host => request.domain
    else
      redirect_to root_path(:subdomain => /.+/)
    end
  end

  def available?
    if User.find_by_subdomain(params[:users][:shop_name]).present?
      redirect_to root_path, :alert => '"'.concat(params[:users][:shop_name]).concat('" er ikke tilgjengelig!')
    else
      redirect_to new_user_registration_path, :flash => {:shop_name => params[:users][:shop_name]}
    end
  end
end

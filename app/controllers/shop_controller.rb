class ShopController < ApplicationController
  before_filter :exists?, :owner

  layout 'shop'
  def index
  end

  def category
  end

  def product
  end

  def admin
  end

  def exists?
    redirect_to root_url :host => request.domain unless User.find_by_subdomain(request.subdomain)
  end

  def owner
    @owner = User.find_by_subdomain(request.subdomain)
  end
end

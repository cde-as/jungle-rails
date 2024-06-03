class Admin::CategoriesController < ApplicationController
  before_action :authenticate_admin!
  def index
  end

  def new
  end

  def create
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
    end
  end
end

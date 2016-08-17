class HomeController < ApplicationController
  before_action :authenticate_person!, only: :authentication
  def index
  end

  def authentication
  end
end

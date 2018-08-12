class Admin::CardsController < ApplicationController
  def index
    render 'errors/forbidden' unless current_user.is_admin?
  end
end

class PagesController < ApplicationController
  def index
    @pro = current_user
  end
end

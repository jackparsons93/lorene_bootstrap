class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    redirect_to controller: :customers, action: :new
  end

  def services
  end
end

class WelcomeController < ApplicationController
  def index

  end

  def show_thanks_page
    render 'welcome/thanks_page'
  end

end

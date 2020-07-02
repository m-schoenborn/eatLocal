class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
  end

  def about
  end

  def whatisinseason
  end

  def articles
  end
end

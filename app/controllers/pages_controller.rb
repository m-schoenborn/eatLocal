class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :home, :about, :whatisinseason, :articles ]


  def home
    general = Chatroom.find_by(name: "general")
    redirect_to chatroom_path(general) if general
  end

  def profile
  end

  def producer_profile
  end

  def about
  end

  def whatisinseason
  end

  def articles
  end
end

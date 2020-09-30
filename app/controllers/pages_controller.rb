require 'date'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :date, :robots ]

  def home
    @posts = Post.all
  end

  def date
    @date = Time.now
  end

  def robots
    respond_to :text
  end
end

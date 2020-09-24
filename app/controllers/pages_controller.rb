require 'date'
require 'carrierwave/orm/activerecord'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @posts = Post.all
  end

  def date
    @date = Time.now
  end
end

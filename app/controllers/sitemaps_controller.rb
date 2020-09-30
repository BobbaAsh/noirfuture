class SitemapsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :init_sitemap

  def index
    @posts = Post.all
  end

  private

  def init_sitemap
    headers['Content-Type'] = 'application/xml'
  end

end

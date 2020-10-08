class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_filter :add_www_subdomain

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private
  def add_www_subdomain
    unless /^www/.match(request.host)
      redirect_to("#{request.protocol}x.com#{request.request_uri}",
                  :status => 301)
    end
  end
end

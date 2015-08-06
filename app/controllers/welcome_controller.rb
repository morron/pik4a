class WelcomeController < ApplicationController
  def index
    session[:state] = Digest::MD5.hexdigest(rand.to_s)
    redirect_to VkontakteApi.authorization_url(scope: [:notify, :friends, :photos], state: session[:state])
  end
end

class FeedController < ApplicationController
  def index
    if session[:token]
      @vk = VkontakteApi::Client.new(session[:token])
      @photos = @vk.photos.get_all(owner_id: '-91016989', extended: 0, count: 20)[1..-1]
    else
      authorize
    end
  end

  private

  def authorize
    @vk = VkontakteApi.authorize(code: params[:code])
    session[:token] = @vk.token
    session[:vk_id] = @vk.user_id
  end

end

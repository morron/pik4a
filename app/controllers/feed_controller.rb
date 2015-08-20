class FeedController < ApplicationController
  def index
    if session[:token]
      @vk = VkontakteApi::Client.new(session[:token])
      @photos = @vk.photos.get_all(owner_id: '-91016989', extended: 0, count: 40)[1..-1]
    end
  end
end

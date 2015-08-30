class GroupsController < ApplicationController
  respond_to :json

  def index
    if session[:token]
      @vk = VkontakteApi::Client.new(session[:token])
      @photos = @vk.groups.get(
              user_id: @vk.user_id,
              extended: 1,
              filter: [:groups, :publics],
              count: 20
            )[1..-1]
      respond_with @photos
    end
  end
end

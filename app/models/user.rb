class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.photo_50 = auth["extra"]['raw_info']["photo_50"]
      user.photo_orig = auth["info"]['image']
      user.url = auth['info']['urls']['Vkontakte']
    end
  end
end

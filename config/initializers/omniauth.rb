Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, '5016082', '3eaHf98gDvcgwdGmKzwI',
  {
      :scope => 'friends,audio,photos',
      :lang => 'ru',
      :image_size => 'original'
    }
end

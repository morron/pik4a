Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, '5016082', '3eaHf98gDvcgwdGmKzwI',
  {
      :scope => 'friends,photos,groups',
      :lang => 'ru',
      :image_size => 'original_x2'
    }
end

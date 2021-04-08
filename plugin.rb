# frozen_string_literal: true

# name: SmallCaps
# about: Add smallcaps formatting to your posts
# version: 0.1
# authors: DawnPaladin
# url: https://github.com/DawnPaladin

register_asset 'stylesheets/common/small-caps.scss'
register_asset 'stylesheets/desktop/small-caps.scss', :desktop
register_asset 'stylesheets/mobile/small-caps.scss', :mobile

enabled_site_setting :small_caps_enabled

PLUGIN_NAME ||= 'SmallCap'

load File.expand_path('lib/small-caps/engine.rb', __dir__)

after_initialize do
  # https://github.com/discourse/discourse/blob/master/lib/plugin/instance.rb
end

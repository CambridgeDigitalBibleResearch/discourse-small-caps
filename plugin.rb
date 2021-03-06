# frozen_string_literal: true

# name: Small Caps
# about: Add small caps formatting to your posts
# version: 1.0
# authors: DawnPaladin
# url: https://github.com/DawnPaladin/discourse-small-caps

register_asset 'stylesheets/common/small-caps.scss'
register_asset 'stylesheets/desktop/small-caps.scss', :desktop
register_asset 'stylesheets/mobile/small-caps.scss', :mobile

enabled_site_setting :small_caps_enabled

PLUGIN_NAME ||= 'SmallCaps'

load File.expand_path('lib/small-caps/engine.rb', __dir__)

after_initialize do
  # https://github.com/discourse/discourse/blob/master/lib/plugin/instance.rb
end

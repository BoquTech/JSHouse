# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( jquery-1.4.3.min.js )
Rails.application.config.assets.precompile += %w( jquery.nivo.slider.pack.js )
Rails.application.config.assets.precompile += %w( nivo-slider.css )
Rails.application.config.assets.precompile += %w( fix_bar.js )
Rails.application.config.assets.precompile += %w( top.js )
Rails.application.config.assets.precompile += %w( jquery.skippr.js )
Rails.application.config.assets.precompile += %w( jquery.skippr.css )


# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

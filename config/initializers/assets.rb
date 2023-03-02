# frozen_string_literal: true

#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << Rails.root.join('node_modules/bootstrap-icons/font')

# Precompile additional assets.
# application.js, main.css.scss, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

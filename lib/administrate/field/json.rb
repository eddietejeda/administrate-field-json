require "administrate/field/base"
require 'rails/engine'
require "rails"
require "administrate/engine"

module Administrate
  module Field
    class JSON < Administrate::Field::Base
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript "administrate-field-json/application"
        Administrate::Engine.add_stylesheet "administrate-field-json/application"

        engine_root = self.root

        isolate_namespace Administrate
        config.to_prepare do
          Rails.application.config.assets.paths << engine_root.join("vendor", "assets", "images")
        end
      end
    end
  end
end

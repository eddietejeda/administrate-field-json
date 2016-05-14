require "administrate/engine"
require "administrate/field/base"
require "rails"

module Administrate
  module Field
    class JSON < Administrate::Field::Base
      VERSION = "0.0.1"

      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript "administrate-field-json"
        Administrate::Engine.add_stylesheet "administrate-field-json"

        engine_root = self.root

        isolate_namespace Administrate
        config.to_prepare do
          Rails.application.config.assets.paths << engine_root.join("vendor", "assets", "images")
        end
      end
    end
  end
end
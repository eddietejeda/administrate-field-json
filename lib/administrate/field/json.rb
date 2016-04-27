require "administrate/field/base"
require "rails"

# http://stackoverflow.com/questions/5117729/rails-is-there-an-engine-root

module Administrate
  module Field
    class JSON < Administrate::Field::Base
      VERSION = "0.0.1"

      class Engine < ::Rails::Engine
        engine_root = self.root
        
        isolate_namespace Administrate
        config.to_prepare do
          Rails.application.config.assets.paths << engine_root.join("app", "assets", "javascripts", "administrate-field-json")
          Rails.application.config.assets.paths << engine_root.join("app", "assets", "stylesheets", "administrate-field-json")
          Rails.application.config.assets.paths << engine_root.join("vendor", "assets", "images")
        end
        
      end
    end
  end
end

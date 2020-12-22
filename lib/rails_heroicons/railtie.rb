module RailsHeroicons
  class Railtie < ::Rails::Railtie
    initializer "rails_heroicons.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include RailsHeroicons::ViewHelpers
      end
    end
  end
end

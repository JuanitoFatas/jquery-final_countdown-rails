module Jquery
  module FinalCountdown
    module Rails
      class Railtie < ::Rails::Railtie
        config.before_configuration do
          if config.action_view.javascript_expansions
            the_final_countdown_default = ::Rails.env.production? || ::Rails.env.test? ? %w(jquery.countdown.min) : %w(jquery.countdown)

            # Add jQuery.countdown
            config.action_view.javascript_expansions[:defaults] |= the_final_countdown_default
          end
        end
    end
  end
end

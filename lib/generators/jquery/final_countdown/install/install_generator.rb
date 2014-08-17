require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || ::Rails.application.config.assets.enabled == false
  module Jquery
    module FinalCountdown
      module Generators
        class InstallGenerator < ::Rails::Generators::Base

          desc "This generator installs jQuery.countdown #{Jquery::FinalCountdown::Rails::VERSION}"
          source_root File.expand_path('../../../../../../vendor/assets/javascripts', __FILE__)

          def copy_jquery_final_countdown
            say_status("copying", "jQuery.countdown (#{Jquery::FinalCountdown::Rails::VERSION})", :green)
            copy_file "jquery.countdown.js", "public/javascripts/jquery.countdown.js"
            copy_file "jquery.countdown.min.js", "public/javascripts/jquery.countdown.min.js"
          end
        end
      end
    end
  end
else # Rails 3.1+
  module Jquery
    module FinalCountdown
      module Generators
        class InstallGenerator < ::Rails::Generators::Base
          desc "Just show instructions so people will know what to do when mistakenly using generator"

          def do_nothing
            say("The jQuery.countdown is ready to use in your asset pipeline.", :green)
            say("Just add `//= require jquery.countdown` to your app/assets/javascripts/application.js and that's it!", :green)
          end
        end
      end
    end
  end
end

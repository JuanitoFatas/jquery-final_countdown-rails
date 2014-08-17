require 'jquery/final_countdown/rails/version'

module Jquery
  module FinalCountdown
    module Rails
      if defined? ::Rails
        if ::Rails.version < "3.1"
          require 'jquery/final_countdown/rails/railtie'
        else
          require 'jquery/final_countdown/rails/engine'
        end
      elsif defined? ::Sprockets
        require 'jquery/final_countdown/rails/sprockets'
      end
    end
  end
end

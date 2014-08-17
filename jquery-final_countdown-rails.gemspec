# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery/final_countdown/rails/version'

Gem::Specification.new do |s|
  s.name        = 'jquery-final_countdown-rails'
  s.version     = '2.0.4'
  s.authors     = ['Juanito Fatas']
  s.email       = ['katehuang0320@gmail.com']
  s.summary     = 'jQuery.countdown (The Final Countdown) for Rails'
  s.description = 'This gem provides jQuery.countdown driver for your Rails application.'
  s.homepage    = 'https://github.com/juanitofatas/jquery-final_countdown-rails'
  s.license     = 'MIT'

  s.add_dependency 'railties', '>= 3.0', '< 5.0'
  s.add_dependency 'thor',     '>= 0.14', '< 2.0'

  s.files        = `git ls-files -z`.split("\x0")
  s.require_path = ['lib']
end

require "bundler/gem_tasks"

task :update_jquery_final_countdown do
  puts 'Downloading jquery.countdown.js'
  puts `curl -o vendor/assets/javascripts/jquery.countdown.js https://raw.githubusercontent.com/hilios/jQuery.countdown/master/dist/jquery.countdown.js`
  puts 'Downloading jquery.countdown.min.js'
  puts `curl -o vendor/assets/javascripts/jquery.countdown.min.js https://raw.githubusercontent.com/hilios/jQuery.countdown/master/dist/jquery.countdown.min.js`

  puts 'Updating version.rb'
  version = false
  File.foreach('vendor/assets/javascripts/jquery.countdown.js') do |line|
    version = line.match(/The Final Countdown for jQuery v([\S]+)/)
    version = version && version[1]
    break if version
  end

  version_path = 'lib/jquery/final_countdown/rails/version.rb'
  lines = IO.readlines(version_path).map do |line|
    line.gsub(/VERSION = "([\d\.]+)"/, "VERSION = \"#{version}\"")
  end
  File.open(version_path, 'w') do |file|
    file.puts lines
  end

  puts "\e[32mDone!\e[0m"
end

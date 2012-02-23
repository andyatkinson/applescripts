#!/usr/bin/ruby
require 'yaml'

templates = ["openvpn"]

templates.each do |filename|
  processed = File.read("#{filename}.template.applescript")
  YAML.load_file("config.yml").each_pair do |key, value|
    processed.gsub!("{{#{key}}}", value)
  end
  File.open("#{filename}.applescript", "w"){|f| f.write(processed) }
end
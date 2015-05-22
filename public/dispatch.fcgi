#!/home/aweist13/.rbenv/versions/2.2.2/bin/ruby

ENV['RAILS_ENV'] ||= 'production'
ENV['HOME'] ||= `echo ~`.strip

require 'fcgi'
require File.join(File.dirname(__FILE__), '../config/environment.rb')

class Rack::PathInfoRewriter
  def initialize(app)
    @app = app
  end

  def call(env)
    env.delete('SCRIPT_NAME')
    parts = env['REQUEST_URI'].split('?')
    env['PATH_INFO'] = parts[0]
    env['QUERY_STRING'] = parts[1].to_s
    @app.call(env)
  end
end
Rack::Handler::FastCGI.run  Rack::PathInfoRewriter.new(Teknobarn::Application) # REPLACE X WITH YOUR APPLICATION'S NAME (found in config/application.rb)
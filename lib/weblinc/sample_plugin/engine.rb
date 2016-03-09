module Weblinc
  module SamplePlugin
    class Engine < ::Rails::Engine
      include Weblinc::Plugin
      isolate_namespace Weblinc::SamplePlugin

      initializer 'weblinc.sample_plugin' do
        # configure and customize WebLinc here
      end
    end
  end
end

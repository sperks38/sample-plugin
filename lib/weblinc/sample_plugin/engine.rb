module Weblinc
  module SamplePlugin
    class Engine < ::Rails::Engine
      include Weblinc::Plugin
      isolate_namespace Weblinc::SamplePlugin

      initializer 'weblinc.sample_plugin' do

        Plugin.append_partials(
          'admin.edit_product_relations',
          'weblinc/admin/catalog_products/sample_product_append'
        )

        Plugin.append_partials(
          'admin.edit_product',
          'weblinc/admin/catalog_products/sample_product_form'
        )

        Plugin.append_partials(
          'store_front.product_show',
          'weblinc/store_front/products/sample_product_append'
        )

      end
    end
  end
end

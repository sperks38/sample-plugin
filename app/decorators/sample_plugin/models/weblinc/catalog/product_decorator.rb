module Weblinc
  decorate Catalog::Product, with: 'sample_plugin' do
    decorated do
      field :sample_header, type: String
      field :sample_text, type: String
    end
  end
end

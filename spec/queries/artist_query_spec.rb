require 'rails_helper'
require 'support/shared_examples/query_object'

describe 'ArtistQuery' do
  subject(:query)             { ArtistQuery.relation }
  subject(:association_query) { ArtistQuery.relation(awesome_label.artists) }

  it_behaves_like 'query object - base'
  it_behaves_like 'query object - not chaining with AR contidions in between'
end

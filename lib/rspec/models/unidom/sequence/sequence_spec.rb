describe Unidom::Sequence::Sequence, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      sequentiality_code: 'ZZZZ',
      prefix:             '110116'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

    it_behaves_like 'scope', :prefix_is, [
      { attributes_collection: [ model_attributes ], count_diff: 0, args: [ '110115' ] },
      { attributes_collection: [ model_attributes ], count_diff: 0, args: [ 110115   ] },
      { attributes_collection: [ model_attributes ], count_diff: 1, args: [ '110116' ] },
      { attributes_collection: [ model_attributes ], count_diff: 1, args: [ 110116   ] },
      { attributes_collection: [ model_attributes ], count_diff: 0, args: [ '110117' ] },
      { attributes_collection: [ model_attributes ], count_diff: 0, args: [ 110117   ] } ]

  end

end

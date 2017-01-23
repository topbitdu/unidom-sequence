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

  end

end

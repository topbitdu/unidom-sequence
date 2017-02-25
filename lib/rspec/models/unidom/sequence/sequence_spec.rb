describe Unidom::Sequence::Sequence, type: :model do

  subject :sequentiality_code do 'ODNO'           end
  subject :prefix             do 'ORDER-20171225' end

  before :each do
  end

  after :each do
  end

  it 'should be able to generate 1 new serial number' do

    serial_number = described_class.generate! sequentiality_code, prefix
    expect(serial_number).to eq(1)

  end

  it 'should be able to generate 2 new serial numbers' do

    serial_number_1 = described_class.generate! sequentiality_code, prefix
    expect(serial_number_1).to eq(1)

    serial_number_2 = described_class.generate! sequentiality_code, prefix
    expect(serial_number_2).to eq(2)

  end

  it 'should be able to generate 1 new serial number with empty prefix' do

    serial_number = described_class.generate! sequentiality_code
    expect(serial_number).to eq(1)

  end

  it 'should be able to generate 2 new serial numbers with empty prefix' do

    serial_number_1 = described_class.generate! sequentiality_code
    expect(serial_number_1).to eq(1)

    serial_number_2 = described_class.generate! sequentiality_code
    expect(serial_number_2).to eq(2)

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

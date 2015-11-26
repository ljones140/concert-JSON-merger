require './lib/concert_merger.rb'
require './lib/concert_description.rb'

describe 'concert merger' do

  concert_merger = ConcertMerger.new({ concert_json: './concerts.json',
                                       description_class: ConcertDescription })

  it 'converts JSON into concert description instances' do
    expect(concert_merger.descriptions.count).to eq(10)
    expect(concert_merger.descriptions.all? { |description| description.is_a?(ConcertDescription) } ).to be true
  end

  it 'creates description instances with artists and date attributes' do
    expect(concert_merger.descriptions[0].artists).to eq(["Radiohead"])
    expect(concert_merger.descriptions[0].date).to eq("2012-10-08")
  end

  it 'groups concerts with matching artists and dates' do

  end

end

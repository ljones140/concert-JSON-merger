require 'concert_merger'

describe ConcertMerger do

  subject do
    ConcertMerger.new({ concert_json: '../concerts.json' })
  end

  it 'converts JSON into concert data instances' do
  end
end

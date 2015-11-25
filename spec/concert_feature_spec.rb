require './lib/concert_merger.rb'

describe 'concert merger' do

  concert_merger = ConcertMerger.new({ concert_json: '../concerts.json' })

  it 'groups concerts that have same artists and date' do

  end
end

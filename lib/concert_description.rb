class ConcertDescription

  attr_reader :artists, :date

  def initialize(options)
    @artists = options[:artists]
    @date = options[:date]
  end

end

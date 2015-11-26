require 'json'
require_relative 'concert_description.rb'

class ConcertMerger

  attr_reader :descriptions

  def initialize(options)
    @descriptions = []
    @description_class = options[:description_class]
    descriptions = json_to_hash(options[:concert_json])
    populate_descriptions(descriptions)
  end

  private

  def populate_descriptions(descriptions)
    descriptions.each do |description| 
      @descriptions << @description_class.new(description)
    end
  end

  def json_to_hash(json)
    JSON.parse(File.read(json), symbolize_names: true)
  end

end


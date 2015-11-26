require 'json'
require_relative 'concert_description.rb'

class ConcertMerger

  attr_reader :descriptions

  def initialize(options)
    @descriptions = []
    @description_class = options[:description_class]
    concerts_json = options[:concert_json]
    json_to_descriptions(concerts_json)
  end

  def json_to_descriptions(json)
    descriptions = JSON.parse(File.read(json), symbolize_names: true)
    descriptions.each do |description| 
      @descriptions << @description_class.new(description)
    end
  end

end


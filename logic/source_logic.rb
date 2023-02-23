require 'json'
require_relative '../app/source'

module SourceLogic
  def save_sources
    arr = []
    @source.each do |item|
      arr.push({ name: item.name })
    end
    File.write('./save_data/source.json', JSON.generate(arr))
  end

  def load_sources
    source = []
    if File.empty?('./save_data/source.json')
      File.write('./save_data/source.json', [])
    else
      JSON.parse(File.read('./save_data/source.json')).each do |item|
        source.push(Source.new(item['name']))
      end
    end
    source
  end
end

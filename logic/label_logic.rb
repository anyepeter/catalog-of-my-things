require 'json'
require_relative '../app/label'

module LabelLogic
  def save_label
    arr = []
    @label.each do |item|
      arr.push({
                 title: item.title,
                 color: item.color
               })
    end
    File.write('./save_data/label.json', JSON.generate(arr))
  end

  def load_label
    label = []
    if File.empty?('./save_data/label.json')
      File.write('./save_data/label.json', [])
    else
      JSON.parse(File.read('./save_data/label.json')).each do |item|
        label.push(Label.new(item['title'], item['color']))
      end
    end
    label
  end
end

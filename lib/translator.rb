# require modules here
require "yaml"


def load_library(file_path)
  # code goes here
  library = YAML.load_file(file_path)
  emoticons = {}
  emoticons["get_meaning"] = {}
  emoticons["get_emoticon"] = {}
  library.each do |meaning, emoticons|
    puts emoticons.inspect
    emoticons["get_meaning"]
    emoticons["get_emotion"][emoticons.first]
  end
  puts emoticons
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

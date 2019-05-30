# require modules here
require "yaml"


def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  emoticons = emoticons.map do |meaning, emoticons|
    { 
      "get_meaning"=>meaning, 
      "get_emoticon"=>
        emoticons.first => emoticons.last
    }
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

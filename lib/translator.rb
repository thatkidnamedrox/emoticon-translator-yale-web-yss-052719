# require modules here
require "yaml"


def load_library(file_path)
  # code goes here
  library = YAML.load_file(file_path)
  emoticons = {}
  emoticons["get_meaning"] = {}
  emoticons["get_emoticon"] = {}
  library.each do |meaning, jap_eng_emoticons|
    emoticons["get_meaning"][jap_eng_emoticons.last] = meaning
    emoticons["get_emoticon"][jap_eng_emoticons.first] = jap_eng_emoticons.last
  end
  emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  jap_emoticon = emoticons["get_emoticon"][emoticon]
  jap_emoticon ? jap_emoticon : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  eng_meaing = emoticons["get_meaning"][emoticon]
  eng_meaing ? eng_meaing : "Sorry, that emoticon was not found"
end

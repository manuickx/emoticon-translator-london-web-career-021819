# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticon_hash = {}
  emoticon_hash["get_emoticon"] = {}
  emoticon_hash["get_meaning"] = {}
    emoticons.each do |english_word, emoticon_set|
      emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
      emoticon_hash["get_meaning"][emoticon_set.last] = english_word
    end
  emoticon_hash
end

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  emoticon = hash["get_emoticon"][emoticon]
    if emoticon == nil
      emoticon = "Sorry, that emoticon was not found" 
    end
  emoticon
end

def get_english_meaning(file_path, emoticon)
  hash = load_library(file_path)
  name = hash["get_meaning"][emoticon]
    if name == nil
      name = "Sorry, that emoticon was not found" 
    end
  name
end
# require modules here
require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  emoticon_hash
end

def get_japanese_emoticon(file_path, emoticon)
emoticons = load_library(file_path)
emoji = nil
  emoticons.each do |name, emojis|
    if emoticon == emojis[0]
      emoji = emojis[1]
    end
  end
if emoji == nil
  "Sorry, that emoticon was not found"
else 
  emoji
end
end

def get_english_meaning(file_path, emoticon)
emoticons = load_library(file_path)
name = nil
  emoticons.each do |names, emojis|
    if emoticon == emojis[1]
      name = names
    end
  end
if name == nil
  "Sorry, that emoticon was not found"
else 
  name
end
end
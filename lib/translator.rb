# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load(Filefile_path)
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
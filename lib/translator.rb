require "yaml"

def load_library(location)
  emoticons = YAML.load_file(location)
  library = {}
  library["get_meaning"] = {}
  library["get_emoticon"] = {}
  emoticons.each do |meaning, emoticon|
    library["get_meaning"][emoticon[1]] = meaning
    library["get_emoticon"][emoticon[0]] = emoticon[1]
  end
  library
end

def get_japanese_emoticon(location, emoticon)
  emote = load_library(location)["get_emoticon"][emoticon]
  if emote == nil
    "Sorry, that emoticon was not found"
  else
    emote
  end
end

def get_english_meaning(location, emoticon)
  meaning = load_library(location)["get_meaning"][emoticon]
  if meaning == nil
    "Sorry, that emoticon was not found"
  else
    meaning
  end
end

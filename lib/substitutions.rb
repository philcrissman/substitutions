require "substitutions/version"

module Substitutions
  class Text
    attr_reader :text

    SUBSTITUTIONS = {
      "witnesses" => "these dudes I know",
      "allegedly" => "kinda probably",
      "new study" => "tumblr post",
      "rebuild" => "avenge",
      "space" => "spaaace",
      "google glass" => "virtual boy",
      "smartphone" => "pokédex",
      "electric" => "atomic",
      "senator" => "Elf-Lord",
      "car" => "cat",
      "election" => "eating contest",
      "congressional leaders" => "river spirits",
      "homeland security" => "homestar runner",
      "could not be reached for comment" => "is guilty and everyone knows it",
      "debate" => "dance-off",
      "self driving" => "uncontrollably swerving",
      "poll" => "psychic reading",
      "candidate" => "airbender",
      "drone" => "dog",
      "vows to" => "probably won't",
      "at large" => "very large",
      "successfully" => "suddenly",
      "expands" => "physically expands",
      "first-degree" => "friggin' awful",
      "second-degree" => "friggin' awful",
      "third-degree" => "friggin' awful",
      "an unknown number" => "like hundreds",
      "front runner" => "blade runner",
      "global" => "spherical",
      "no indication" => "lots of signs",
      "urged restraint by" => "drunkenly egged on",
      "horsepower" => "tons of horsemeat",
      "gaffe" => "magic spell",
      "ancient" => "haunted",
      "star-studded" => "blood-soaked",
      "remains to be seen" => "will never be known",
      "silver bullet" => "way to kill werewolves",
      "subway system" => "tunnels I found",
      "surprising" => "surprising (but not to me)",
      "war of words" => "interplanetary war",
      "tension" => "sexual tension",
      "cautiously optimistic" => "delusional",
      "doctor who" => "the big bang theory",
      "win votes" => "find pokémon",
      "behind the headlines" => "beyond the grave",
      /(email|facebook post|tweet)/ => "poem",
      "facebook ceo" => "this guy",
      "latest" => "final",
      "disrupt" => "destroy",
      "meeting" => "ménage à trois",
      "scientists" => "Channing Tatum and his friends",
      "you won't believe" => "I'm really sad about",
    }

    def initialize(text)
      @text = text
    end

    def substitute!
      # TODO swap minutes and years. Write test.
      substituted = @text.downcase
      SUBSTITUTIONS.each do |key,value|
        substituted = substituted.gsub(key, value)
      end
      substituted
    end
  end
end

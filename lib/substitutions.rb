require "substitutions/version"

module Substitutions
  class Text
    attr_reader :text

    SUBSTITUTIONS = {
      /witnesses/i => "these dudes I know",
      /allegedly/i => "kinda probably",
      /new study/i => "tumblr post",
      /rebuild/i => "avenge",
      /space/i => "spaaace",
      /google glass/i => "virtual boy",
      /smartphone/i => "pokédex",
      /electric/i => "atomic",
      /senator/i => "Elf-Lord",
      /car/i => "cat",
      /election/i => "eating contest",
      /congressional leaders/i => "river spirits",
      /homeland security/i => "homestar runner",
      /could not be reached for comment/i => "is guilty and everyone knows it",
      /debate/i => "dance-off",
      /self driving/i => "uncontrollably swerving",
      /poll/i => "psychic reading",
      /candidate/i => "airbender",
      /drone/i => "dog",
      /vows to/i => "probably won't",
      /at large/i => "very large",
      /successfully/i => "suddenly",
      /expands/i => "physically expands",
      /first-degree/i => "friggin' awful",
      /second-degree/i => "friggin' awful",
      /third-degree/i => "friggin' awful",
      /an unknown number/i => "like hundreds",
      /front runner/i => "blade runner",
      /global/i => "spherical",
      /no indication/i => "lots of signs",
      /urged restraint by/i => "drunkenly egged on",
      /horsepower/i => "tons of horsemeat",
      /gaffe/i => "magic spell",
      /ancient/i => "haunted",
      /star-studded/i => "blood-soaked",
      /remains to be seen/i => "will never be known",
      /silver bullet/i => "way to kill werewolves",
      /subway system/i => "tunnels I found",
      /surprising/i => "surprising (but not to me)",
      /war of words/i => "interplanetary war",
      /tension/i => "sexual tension",
      /cautiously optimistic/i => "delusional",
      /doctor who/i => "the big bang theory",
      /win votes/i => "find pokémon",
      /behind the headlines/i => "beyond the grave",
      /(email|facebook post|tweet)/i => "poem",
      /facebook ceo/i => "this guy",
      /latest/i => "final",
      /disrupt/i => "destroy",
      /meeting/i => "ménage à trois",
      /scientists/i => "Channing Tatum and his friends",
      /you won't believe/i => "I'm really sad about",
    }

    def initialize(text)
      @text = text
    end

    def substitute!
      # TODO swap minutes and years. Write test.
      substituted = @text
      substituted = years_and_minutes(substituted)
      SUBSTITUTIONS.each do |key,value|
        substituted = substituted.gsub(key, value)
      end
      substituted
    end

    def years_and_minutes(txt)
      words = txt.split(" ")
      years_indexes = words.each_with_index.map{|w,i| i if w.match(/years/)}.compact
      minutes_indexes = words.each_with_index.map{|w,i| i if w.match(/minutes/)}.compact
      years_indexes.each{|i| words[i].gsub!(/years/, "minutes")}
      minutes_indexes.each{|i| words[i].gsub!(/minutes/, "years")}
      words.join(" ")
    end
  end
end

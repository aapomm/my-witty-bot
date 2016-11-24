class Jester

  JOKES = [
    "How do you think the unthinkable? With an ithberg!",
    "Why do you never see elephants hiding in trees? Because they're very good at it.",
    "What did the pirate say on his 80th birthday? aye 'maighty",
    "Why was the teacher cross eyed? Because he couldn't control his pupils!",
    "Plateaus are the highest form of flattery.",
    "What's orange and sounds like a parrot? A carrot.",
    "What do you call a sleepwalking nun? A roamin' catholic."
  ]

  def self.random_joke
    JOKES[ rand(JOKES.length) ]
  end

end

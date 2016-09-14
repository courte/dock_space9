# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
quotes = [
  {
    text: "The oldest picture book in our possession is the midnight sky.",
    author: "E. W. Maunder"
  },
  {
    text: "Astronomy compels the soul to look upward, and leads us from this world to another.",
    author: "Plato"
  },
  {
    text: "I've discovered that half the people would love to go into space and "\
      "there's no need to explain it to them. The other half can't understand and "\
      "I couldn't explain it to them. If someone doesn't know why, I can't explain it.",
    author: "Sally Ride"
  },
  {
    text: "Every cubic inch of space is a miracle.",
    author: "Walt Whitman"
  },
  {
    text: "No pessimist ever discovered the secret of the stars, or sailed to "\
      "an uncharted land, or opened a new doorway for the human spirit.",
    author: "Helen Keller"
  },
  {
    text: "Outer space is no place for a person of breeding.",
    author: "Lady Violet Bonham Carter"
  },
  {
    text: "Space-ships and time machines are no escape from the human condition. "\
      "Let Othello subject Desdemona to a lie-detector test; his jealousy will "\
      "still blind him to the evidence. Let Oedipus triumph over gravity; he won't triumph over his fate.",
    author: "Arthur Koestler"
  }
]

quotes.each { |quote| Quote.create(quote) }

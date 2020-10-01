require "tty-prompt"

prompt = TTY::Prompt.new

prompt.select("What would you like to do?", %w(Breakfast Lunch Dinner Snacks))
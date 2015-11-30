#! /usr/bin/env ruby

word = Regexp.escape($_.chomp).gsub('/', '\/')
files = `git grep -l '#{word}'`.split("\n")
files.each do |file|
  `sed -i '' 's/#{word}/!!!CREDENTIAL!!!/g' #{file}` if file !=""
end

#! /usr/bin/env ruby

word = Regexp.escape($_.chomp).gsub('/', '\/')
file = `git grep -l '#{word}'`
`sed -i '' 's/#{word}/!!!CREDENTIAL!!!/g' #{file}` if file !=""

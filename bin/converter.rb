#! /usr/bin/env ruby

word = Regexp.escape($_.chomp)
file = `git grep -l '#{word}'`
`sed -i '' 's/#{word}/!!!CREDENTIAL!!!/g' #{file}` if file !=""

#! /home/jimu/.rbenv/shims/ruby

FNAME1 = ARGV[0]
FNAME2 = ARGV[1]

puts "File1 is #{FNAME1}"
puts "File2 is #{FNAME2}"

words = File.read(FNAME1).downcase.gsub(/[^a-z]/, ' ').split

puts "#{FNAME1}: #{words.size} words"

word_counts = {}

words.each do |w|
  word_counts[w] = word_counts[w] ? word_counts[w] + 1 : 1
end

HAMLET = File.read(FNAME2).downcase.gsub(/[^a-z]/, ' ').split
puts "#{FNAME2}: #{HAMLET.size} words"

HAMLET.each { |word| word_counts.delete(word) }

sorted = word_counts.sort_by{|word,count| count}.reverse[0..20]
sorted.each do |word,count|
  puts "#{count}: #{word}"
end

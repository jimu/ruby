require "csv"

fname = "albums.csv"
#albums = albums[1..9999]
first_album = CSV.read(fname)[1]
puts first_album

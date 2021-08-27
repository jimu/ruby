require "csv"


fname = "albums.csv"


def isJazz70s(album)
  year = album[3].to_i
  return album[2] == "Jazz" && year.between?(1970, 1979)
end


def filter_jazz70(albums)

  albums.each { |album|
    if (isJazz70s(album))
      puts album[0]
    end
  }
end



albums = CSV.read(fname)[1..-1]

filter_jazz70(albums)


puts "---"
puts albums.select{|r| isJazz70s(r)}
           .map{|r| " * " + r[0]}

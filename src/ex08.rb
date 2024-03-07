module Acronym
    def self.abbreviate(string)
        new_string = string.gsub('-', ' ')
        vec = new_string.split
        acronym = []
        for i in 0..(vec.length - 1)
            if (vec[i][0].match?(/[[:alpha:]]/))
                acronym.push(vec[i][0].capitalize)
            end
        end
        return (acronym.join(''))
    end
end

puts Acronym.abbreviate('Portable Network Graphics')
puts Acronym.abbreviate('Ruby on Rails')
puts Acronym.abbreviate('First In, First Out')
puts Acronym.abbreviate('Complementary metal-oxide semiconductor')
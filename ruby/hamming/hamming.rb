class Hamming
    def self.compute(strand_a, strand_b)

        if strand_a.size != strand_b.size
            raised('The strands size must be equal')
        end

        strand_a.each_char.with_index.count do |value, key|
            value != strand_b[key]
        end
        
    end

    def self.raised(message)
        raise(ArgumentError, message)
    end

end

module BookKeeping
    VERSION = 3
end
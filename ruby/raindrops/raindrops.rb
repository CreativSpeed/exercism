class Raindrops
    attr_reader :number, :drop_effect
    
    def self.convert(number)        
        @number = number

        # register pair {result => fucntion} into @drop_effect hash
        # for check_number / funcntional programming style
        @drop_effect = { :Pling => third?, :Plang => fifth?, :Plong => seventh?, @number => none? }

        check_number
    end

    def self.check_number
        @drop_effect.map{ |str, func| func ? str : nil }.join.to_s
    end

    def self.third?
        @number % 3 == 0 
    end

    def self.fifth?
        @number % 5 == 0
    end

    def self.seventh?
        @number % 7 == 0
    end

    def self.none?
        !third? && !fifth? && !seventh?
    end
end
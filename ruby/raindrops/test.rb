class Ab
    def initialize(a)
        @a = a
    end

    def a(a)
        @a = a
    end

    def debug
        puts @a
    end

    def self.b(b)
        @b = b
    end

    def self.debug
        puts @b
    end

end

# first_a = Ab.new :first_a
# second_a = Ab.new :second_a
# first_a.debug # puts the @a of instance first_a
# second_a.debug # puts the @a of instance second_a
# # a instance variable can change without changing other instances
# first_a.a :another_a
# first_a.debug # puts the @a of instance another_a
# second_a.debug # puts the @a of instance second_a

Ab.b :first_b
Ab.debug # puts the @b of ALL class Ab
Ab.b :second_b
Ab.debug # puts the @b of ALL class Ab
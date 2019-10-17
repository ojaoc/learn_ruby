class Book
    attr_accessor :title
    def title=(book_title)
        word = book_title.split(" ")
        @title = String.new
        exceptions = ["the", "a", "an", "and", "in", "of", "at", "for", "by"]
        word.each_with_index do |x, index|
            unless index == 0
                if exceptions.include?(x)
                    @title << x + " "
                else
                    @title << x.capitalize + " "
                end
            else
                @title << x.capitalize + " "
            end
        end
        @title.slice!(@title.length - 1)
    end 
end
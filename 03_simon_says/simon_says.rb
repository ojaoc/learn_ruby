#write your code here

def echo string
    string
end

def shout string
    string.upcase
end

def repeat string, x=2
    array = []
    x.times do
        array << string
    end
    array.join(' ')
end

def start_of_word string, x 
    string[0, x]
end

def first_word string
    string.split(' ')[0,1].join(' ')
end

def titleize word
    word_set = word.split 
    titlecase = ''
    little_words = ['and', 'the', 'or', 'over']
    word_set.each_with_index do |element, index|
        if (index == 0 or (not little_words.include? element))
            titlecase += ' ' + element.capitalize
        else
            titlecase += ' ' + element
        end
    end
    titlecase[1..]
end

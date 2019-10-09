#write your code here

def translate string
    vowels = ['a', 'e', 'i', 'o', 'u']
    split_string = string.split(' ')
    translated_string = ''
    split_string.each_with_index { |element,index|
        if vowels.include? element[0]
            translated_string += ' ' + element + 'ay'
        else
            i = 0
            while not vowels.include? element[i]

                i += 1
            end
            if element[i] == 'u' && element[i-1] == 'q'
                i += 1
            end
            translated_string += ' ' + element[i..] + element[0..i-1] + 'ay'
        end
    }
    translated_string[1..]
end
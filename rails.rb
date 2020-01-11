# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'
def hello_world lan_code = ''
    case lan_code
        when 'es'
            "Hola Mundo"
        when 'de'
            "Hallo Welt"
        when 'ru'
            "Привет, мир"
        when 'ja'
            "こんにちは世界"
        else
            "Hello,World"
    end
    
end
puts hello_world 'es'
puts hello_world 'de'
puts hello_world 

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade number
    
    if number <=100 && number >90
        "A"
    elsif number <=90 && number >80
        "B"
    elsif number <=80 && number >70
        "C"
    elsif number <=70 && number >60
        "D"
    else
        "F"
    end
end
puts assign_grade 96
puts assign_grade 75
puts assign_grade 50
# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade number
    
    if number <0 || number>100
        "Invalid Number"
    elsif number <=100 && number >90
        "A"
    elsif number <=90 && number >80
        "B"
    elsif number <=80 && number >70
        "C"
    elsif number <=70 && number >60
        "D"
    else
        "F"
    end
end
puts assign_grade 96
puts assign_grade (-1)
puts assign_grade 101


# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer number,noun
    if number <= 0
        "No #{noun}"
    elsif number == 1
        "#{number} #{noun}"   
    else
        "#{number} #{noun}s"
    end
end
puts pluralizer 1,'dog'
puts pluralizer 2,'cat'
puts pluralizer 0,'lion'

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.


def pluralizer number,noun
    if number <= 0
        "No #{noun}"
    elsif number == 1
        "#{number} #{noun}"   
    else
        if noun.downcase == 'geese'
            noun = 'goose'
        elsif noun.downcase == 'child'
            noun = 'children'
        elsif noun.downcase == 'person'
            noun = 'people'
        else
            noun = noun.concat('s')
        end
        "#{number} #{noun}"
    end
end
puts pluralizer 3,'dog'
puts pluralizer 2,'geese'
puts pluralizer 5,'child'




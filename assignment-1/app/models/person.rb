class Person < ActiveRecord::Base
    belongs_to :race

    def greet
        puts "Hello, I'm " + self.name
    end

    def self.describe(person)
        puts "That person's name is " + person.name + ".  He is a " + Race.find(person.race_id).title + "."
    end

    def talk(person)
        if person.race_id == 1
            puts "Hi " + person.name + "!  This is a nice greeting."
        elsif person.race_id == 2
            puts "Grrrraaagrghhhhhhh..."
        else
            puts "what"
        end
    end

    def bite(person)
        if self.race_id == 1
            puts "Humans don't bite other people!"
        elsif self.race_id == 2 && person.race_id == 2
            puts "Zombies don't bite other zombies!"
        elsif self.race_id == 2 && person.race_id == 1
            puts self.name + " just bit " + person.name + "!"
            person.race_id = 2
            person.save
        end

    end    
end

class Person

    attr_accessor :first, :last, :age

    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end
    
    def birthday
        @age += 1
    end
end

class Student < Person
    def talk    
        "Aquí es la clase de programación con Ruby?"    
    end

    def introduce
        "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
    
end 

class Teacher < Person
    def talk
        "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end 

class Parent < Person

    def talk
        "Aquí es la reunión de apoderados?"
    end

    def introduce
        "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end 

s = Student.new("Nacho", "Moran", 31)
puts s.talk
puts s.introduce
puts s.birthday

t = Teacher.new("Peter", "Rock", 60)
puts t.talk
puts t.introduce
puts t.birthday

p = Parent.new("Elvis", "Teck", 50)
puts p.talk
puts p.introduce
puts p.birthday

h = Person.new("Luis", "Jara", 20)
puts h.birthday
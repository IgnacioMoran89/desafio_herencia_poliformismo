module Habilidades

    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
end

module Alimentacion

    module Herbivoro
        def comer
        'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
        'Puedo comer carne!'
        end
    end
end

#Superclase
class Animal

    include Alimentacion
    include Habilidades

    attr_reader :nombre

    def initialize(nombre)
        @nombre = nombre
    end
end

#Primeras Herencias
class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion
end

class Insecto < Animal
    include Habilidades::Caminante
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end


#Segundas Herencias
class Pinguino < Ave
    include Habilidades::Nadador, Habilidades::Caminante
    include Alimentacion::Carnivoro

    def name
        self.nombre
    end
end 

class Paloma < Ave
    include Habilidades::Volador, Habilidades::Caminante
    include Alimentacion::Carnivoro, Alimentacion::Herbivoro

    def name
        self.nombre
    end
end 

class Pato < Ave
    include Habilidades::Volador, Habilidades::Nadador, Habilidades::Caminante
    include Alimentacion::Carnivoro, Alimentacion::Herbivoro

    def name
        self.nombre
    end
end 

class Perro < Mamifero
    include Habilidades::Caminante, Habilidades::Nadador
    include Alimentacion::Carnivoro

    def name
        self.nombre
    end
end 

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro

    def name
        self.nombre
    end
end 

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro

    def name
        self.nombre
    end
end 

class Mosca < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro, Alimentacion::Carnivoro

    def name
        self.nombre
    end
end 

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro

    def name
        self.nombre
    end
end 

class Abeja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro

    def name
        self.nombre
    end
end 


perro = Perro.new('Aragorn')
puts "Soy #{perro.name} y #{perro.caminar}"

pinguino = Pinguino.new ('Pinwin')
puts "Soy #{pinguino.name} y #{pinguino.volar}, pero #{pinguino.aterrizar}"

pato = Pato.new ('Lukas')
puts "Soy #{pato.name} y #{pato.nadar}, y cuando me sumerjo hago #{pato.sumergir}"

vaca = Vaca.new ('Timi')
puts "Soy #{vaca.name} la vaca y #{vaca.comer}"
# Clase base
class Person
    attr_reader :first_name, :last_name, :age
  
    def initialize(first, last, age)
      @first_name = first
      @last_name = last
      @age = age
    end
  
    def birthday
      @age += 1
    end
  
    def introduce
      puts "#{greeting} Mi nombre es #{@first_name} #{@last_name}."
    end
  
    private
  
    def greeting
      "Hola"
    end
  end
  
  # Subclase Student
  class Student < Person
    def talk
      puts "Aquí es la clase de programación con Ruby?"
    end
  
    private
  
    def greeting
      "Hola profesor."
    end
  end
  
  # Subclase Teacher
  class Teacher < Person
    def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
    end
  
    private
  
    def greeting
      "Hola alumnos."
    end
  end
  
  # Subclase Parent
  class Parent < Person
    def talk
      puts "Aquí es la reunión de apoderados?"
    end
  
    private
  
    def greeting
      "Hola. Soy uno de los apoderados."
    end
  end
  
  # Ejemplo de uso
  student = Student.new("Juan", "Pérez", 20)
  teacher = Teacher.new("Ana", "Gómez", 35)
  parent = Parent.new("Pedro", "López", 45)
  
  student.talk         # Aquí es la clase de programación con Ruby?
  student.introduce    # Hola profesor. Mi nombre es Juan Pérez.
  
  teacher.talk         # Bienvenidos a la clase de programación con Ruby!
  teacher.introduce    # Hola alumnos. Mi nombre es Ana Gómez.
  
  parent.talk          # Aquí es la reunión de apoderados?
  parent.introduce     # Hola. Soy uno de los apoderados. Mi nombre es Pedro López.
  
require_relative 'estudiante'

def limpiar_pantalla
    system ('clear')
end
estudiante = []



opcion=0
while (opcion!=4)
    puts 'INGRESE OPCION: '
    puts '1. Registro de Estudiantes'
    puts '2. Tomar Asistencia'
    puts '3. Resumen de Asistencias'
    puts '4. Salir'
    puts ''
    opcion = gets.chomp.to_i

    if opcion == 1
        limpiar_pantalla()
        puts 'Ingrese Nombre del Estudiante:'
        nombre = gets.chomp
        puts 'Ingrese Numero de Carnet del Estudiante:'
        carnet = gets.chomp
        e = Estudiante.new(nombre, carnet)
        estudiante.push(e)
    end

    if opcion == 2
        limpiar_pantalla()
        puts 'Ingrese Numero de Carnet del Estudiante:'
        carnet = gets.chomp
        estudiante.each do |e|
        if e.obtener_carnet == carnet
            e.asistir_clase()
        end
         end
    end

    if opcion == 3
     limpiar_pantalla()
     puts 'Ingrese Numero de Carnet del Estudiante:'
     asistencia = gets.chomp
     estudiante.each do |e|
        if e.obtener_carnet == asistencia
            puts"Tiene:  #{e.obtener_asistencia(asistencia)} asistencias"
            puts"A la fecha y Hora #{e.asistir_clase}"
        end
    end
    end

end
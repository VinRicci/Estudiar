class Estudiante


    def initialize (nombre, carnet)
        @nombre = nombre
        @carnet = carnet
        @asistencia = 0
        @horaasistencia = []
    end    
    def asistir_clase
        @asistencia += 1
        @horaasistencia.push (Time.new)
    end
        
    def obtener_nombre 
        @nombre 
    end

    def obtener_carnet
        @carnet
    end

    def obtener_asistencia (carnet)
       return @asistencia
       return @horaasistencia[carnet]
    end

end


module DevicesHelper
    def colaborators_options
        Colaborator.all.map do | c |
            ["#{c.lastname} #{c.name}",c.id]
        end
    end
end

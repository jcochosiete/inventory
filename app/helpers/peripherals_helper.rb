module PeripheralsHelper
    def colaborators_options
        Colaborator.all.map do | c |
            ["#{c.lastname} #{c.name}",c.id]
        end
    end
end

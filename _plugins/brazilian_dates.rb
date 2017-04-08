module Jekyll
    module BrazilianDates
        MONTHS = {
                  "01" => "janeiro",
                  "02" => "fevereiro",
                  "03" => "março",
                  "04" => "abril",
                  "05" => "maio",
                  "06" => "junho",
                  "07" => "julho",
                  "08" => "agosto",
                  "09" => "setembro",
                  "10" => "outubro",
                  "11" => "novembro",
                  "12" => "dezembro"
                }

        def brazilianDate(date)
            day = time(date).strftime("%e") # leading zero is replaced by a space
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' '+MONTHS[month]+' '+year
        end

        def usaDate(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%b")
            year = time(date).strftime("%Y")
            month+' '+day+', '+year
        end
    end
end

Liquid::Template.register_filter(Jekyll::BrazilianDates)

class FilterPage < SitePrism::Page
    include Capybara::DSL
    #Declaring all elements of the Search page.
    element :Erstzulassung, '.bla'
        
    def select_filter
        sleep 10
        find('span', text: 'Erstzulassung').click
        find('option', text: '2015').click
        sleep 10
    end

    def result_filter
        find('button[class*=filterButton]')
    end


    def manufactured_date
        find("ul[data-qa-selector=spec-list] li[data-qa-selector=spec]", text: '08/2016')
    end

    def validate_date
        start_date = (Date.today - 1463)
        end_date = Date.today
        start_validation = Date.parse('01-2015')
        end_validation = Date.parse('12-2019')
        @validate_date = start_date > start_validation && end_date < end_validation
    end

    def descending_price
        sleep 10
        @label = find("select[name='sort']")
        @label.find('option', text:'Höchster Preis').select_option
    end 
    
    def compare_price
        a = find("div[data-qa-selector=price]", text: '37.490 €')
        b = find("div[data-qa-selector=price]", text: '37.290 €')
        value = ['37.290 €', '37.490 €']
        asc_value = value.reverse  # => [37.490 €, 37.290 €]
    end       
end

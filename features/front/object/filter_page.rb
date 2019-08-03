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
        find("ul[data-qa-selector=spec-list] li[data-qa-selector=spec]")
        # @year.find(text.to_i.shoulbe be_between(2015, 2019))
    end

    def descending_price
        sleep 10
        @label = find("select[name='sort']")
        @label.find('option', text:'Höchster Preis').select_option
    end 
    
    def compare_price
        find("div[data-qa-selector=filter-price]")
    end       
end

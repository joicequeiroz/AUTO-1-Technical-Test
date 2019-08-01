  When("I filter to first registration") do
    @filter.select_filter
  end
  
  Then("I should be at a list of cars") do
    expect(@filter.result_filter).to have_content "Erstzulassung von"
  end

  When("I want to filter by Price Descending") do
    @filter.descending_price

  end

  Then("I see the list of car sorted by manufactured date") do
    @filter.manufactured_date
    @currentDate = DateTime.now
    @start_date = '01/2015'
    @end_date = '08/2019'
    @currentDate.between?(@start_date, @end_date)
  end
  
  Then("I see the list of car sort by price descending") do
    @filter.compare_price
  end
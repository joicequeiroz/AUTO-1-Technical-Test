  When("I filter to first registration") do
    @filter.select_filter
  end
  
  Then("I should be at a list of cars") do
    expect(@filter.result_filter).to have_content "Erstzulassung von"
  end

  Then("I see the list of car sorted by manufactured date") do
    @filter.manufactured_date
    @filter.validate_date
  end

  When("I want to filter by Price Descending") do
    @filter.descending_price

  end
  
  Then("I see the list of car sort by price descending") do
    @filter.compare_price
  end
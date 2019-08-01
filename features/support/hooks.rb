require 'selenium-webdriver'

Before do
    @visit = VisitSite.new
    @filter = FilterPage.new

    page.current_window.resize_to(1366, 768)
end

Before ("@visit_search") do
    @visit.visit_site
end

After do
 Capybara.current_session.driver.quit
end
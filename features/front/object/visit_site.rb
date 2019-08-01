class VisitSite < SitePrism::Page
    def visit_site
      visit ENVIRONMENT['site']
    end
  end
module ApplicationHelper

  def main_nav
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.menu_tag = "div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\""
    presenter.list_tag = "ul class=\"nav navbar-nav navbar-right\""
    presenter.selected_css = "active"
    presenter.max_depth = 0
    presenter
  end

end

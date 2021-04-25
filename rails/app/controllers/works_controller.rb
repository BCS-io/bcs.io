# frozen_string_literal: true

# WorksController
#  - responsible for displaying work documentation
#    - different custom urls
#
class WorksController < ApplicationController
  before_action :set_breadcrumbs
  def lettings
    add_breadcrumb(name: "Lettings")
  end

  private

  def set_breadcrumbs
    add_breadcrumb(name: "Home", path: root_path)
    add_breadcrumb(name: "Work", path: work_pages_path)
  end
end

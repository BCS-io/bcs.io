# frozen_string_literal: true

# PagesController
#  - responsible for the standard webpages
#    - home, about, contact etc
#
class PagesController < ApplicationController
  def home
    @contact = Contact.new
  end

  def about; end

  def work; end
end

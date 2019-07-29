# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index; 
    @summaries = Summary.all.order(number: :asc)
  end
end

# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index; 
    @summaries = Summary.all
  end
end

class BocceController < ApplicationController
  def standings
    @teams = Team.all
  end
end

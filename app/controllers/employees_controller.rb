class EmployeesController < ApplicationController
  def index
    response = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
    @employees = response.body
    render "index.html.erb"
  end
end

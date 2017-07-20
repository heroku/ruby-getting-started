class WelcomeController < ApplicationController

  # GET /welcome
  def index
    @foos = []
    @bars = []
  end

  def expensive_query
    @foos = Foo.all
    @bars = Bar.all
    render "index"
  end

  def make_objects
    @foos = 500.times.map do
      Foo.create(name: Faker::Name.name, email: Faker::Internet.email)
    end
    @bars = 500.times.map do
      Bar.create(age: rand(21..121), owner: Faker::Cat.name)
    end
    render "index"
  end

end

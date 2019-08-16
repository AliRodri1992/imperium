class HomeController < ApplicationController
  def index
    render react_component: 'Home', props: {name: 'World'}
  end
end

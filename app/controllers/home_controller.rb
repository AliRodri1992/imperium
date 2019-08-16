class HomeController < ApplicationController
  def index
    render react_component: 'Hello', props: {name: 'World'}
  end
end

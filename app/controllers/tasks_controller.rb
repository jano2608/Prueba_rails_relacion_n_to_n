class TasksController < ApplicationController
 
    def index
      @tasks = Task.all
      @todos = Todo.all
    end
  
end

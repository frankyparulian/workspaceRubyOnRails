class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    #binding.pry
    Todo.create(todo_params)
    #redirect_to root_path

    respond_to do |format|
      #if response format is html
      format.html { redirect_to root_path }

      #if response format is javascript
      format.js
    end
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    #redirect_to root_path
    response_to do |format|
      format.html { redirect_to root_path}
      format.js {}
  end

  private
    def todo_params
      params.require(:todo).permit(:description, :priority)
    end

end

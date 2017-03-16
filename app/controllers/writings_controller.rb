class WritingsController < ApplicationController
  def index
    @writings = Writing.all

    render("writings/index.html.erb")
  end

  def show
    @writing = Writing.find(params[:id])

    render("writings/show.html.erb")
  end

  def new
    @writing = Writing.new

    render("writings/new.html.erb")
  end

  def create
    @writing = Writing.new

    @writing.body = params[:body]
    @writing.title = params[:title]
    @writing.user_id = params[:user_id]

    save_status = @writing.save

    if save_status == true
      redirect_to("/writings/#{@writing.id}", :notice => "Writing created successfully.")
    else
      render("writings/new.html.erb")
    end
  end

  def edit
    @writing = Writing.find(params[:id])

    render("writings/edit.html.erb")
  end

  def update
    @writing = Writing.find(params[:id])

    @writing.body = params[:body]
    @writing.title = params[:title]
    @writing.user_id = params[:user_id]

    save_status = @writing.save

    if save_status == true
      redirect_to("/writings/#{@writing.id}", :notice => "Writing updated successfully.")
    else
      render("writings/edit.html.erb")
    end
  end

  def destroy
    @writing = Writing.find(params[:id])

    @writing.destroy

    if URI(request.referer).path == "/writings/#{@writing.id}"
      redirect_to("/", :notice => "Writing deleted.")
    else
      redirect_to(:back, :notice => "Writing deleted.")
    end
  end
end

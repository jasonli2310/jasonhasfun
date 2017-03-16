class WritingcommentsController < ApplicationController
  def index
    @writingcomments = Writingcomment.all

    render("writingcomments/index.html.erb")
  end

  def show
    @writingcomment = Writingcomment.find(params[:id])

    render("writingcomments/show.html.erb")
  end

  def new
    @writingcomment = Writingcomment.new

    render("writingcomments/new.html.erb")
  end

  def create
    @writingcomment = Writingcomment.new

    @writingcomment.writing_id = params[:writing_id]
    @writingcomment.body = params[:body]

    save_status = @writingcomment.save

    if save_status == true
      redirect_to("/writingcomments/#{@writingcomment.id}", :notice => "Writingcomment created successfully.")
    else
      render("writingcomments/new.html.erb")
    end
  end

  def edit
    @writingcomment = Writingcomment.find(params[:id])

    render("writingcomments/edit.html.erb")
  end

  def update
    @writingcomment = Writingcomment.find(params[:id])

    @writingcomment.writing_id = params[:writing_id]
    @writingcomment.body = params[:body]

    save_status = @writingcomment.save

    if save_status == true
      redirect_to("/writingcomments/#{@writingcomment.id}", :notice => "Writingcomment updated successfully.")
    else
      render("writingcomments/edit.html.erb")
    end
  end

  def destroy
    @writingcomment = Writingcomment.find(params[:id])

    @writingcomment.destroy

    if URI(request.referer).path == "/writingcomments/#{@writingcomment.id}"
      redirect_to("/", :notice => "Writingcomment deleted.")
    else
      redirect_to(:back, :notice => "Writingcomment deleted.")
    end
  end
end

class InmailsController < ApplicationController
  def index
    @inmails = Inmail.all

    render("inmails/index.html.erb")
  end

  def show
    @inmail = Inmail.find(params[:id])

    render("inmails/show.html.erb")
  end

  def new
    @inmail = Inmail.new

    render("inmails/new.html.erb")
  end

  def create
    @inmail = Inmail.new

    @inmail.body = params[:body]
    @inmail.name = params[:name]
    @inmail.user_id = params[:user_id]
    @inmail.email = params[:email]
    @inmail.subject = params[:subject]

    save_status = @inmail.save

    if save_status == true
      redirect_to("/photos", :notice => "Message sent successfully!")
    else
      render("inmails/new.html.erb")
    end
  end

  def edit
    @inmail = Inmail.find(params[:id])

    render("inmails/edit.html.erb")
  end

  def update
    @inmail = Inmail.find(params[:id])

    @inmail.body = params[:body]
    @inmail.name = params[:name]
    @inmail.user_id = params[:user_id]
    @inmail.email = params[:email]
    @inmail.subject = params[:subject]

    save_status = @inmail.save

    if save_status == true
      redirect_to("/inmails/#{@inmail.id}", :notice => "Inmail updated successfully.")
    else
      render("inmails/edit.html.erb")
    end
  end

  def destroy
    @inmail = Inmail.find(params[:id])

    @inmail.destroy

    if URI(request.referer).path == "/inmails/#{@inmail.id}"
      redirect_to("/", :notice => "Inmail deleted.")
    else
      redirect_to(:back, :notice => "Inmail deleted.")
    end
  end
end

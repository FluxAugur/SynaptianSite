class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    begin
      @posts = Refinery::Blog::Post.all
      Hash[@posts.flatten]
      
      @contact_form = ContactForm.new(params[:contact_form])
      @contact_form.request = request

      if @contact_form.deliver
      else
        render :new
      end

    rescue ScriptError
      flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
    end

  end
end


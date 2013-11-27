class ApiController < ApplicationController

  respond_to :html, :json

  def contact_form_test
    # render a test page with the form on it
  end

  def contact_form_get
    # render a form as json
    if params[:token]
      @form = ContactForm.find_by_token(params[:token])
      render template: 'api/contact_form_get_angular',layout: false
    else
      render :status => 500
    end
  end

  def angular_controller
    # render a form as json
    if params[:token]
    @form = ContactForm.find_by_token(params[:token])
      render template: 'api/contact_form_angular_controller_js',layout: false, :mime_type => Mime::JS
    else
      render :status => 500
    end
  end

  def ember_controller
    # render a form as json
    if params[:token]
      @form = ContactForm.find_by_token(params[:token])
      render template: 'api/contact_form_angular_controller_js',layout: false, :mime_type => Mime::JS
    else
      render :status => 500
    end
  end

  def loader
    # render a form as json
    if params[:token]
      @form = ContactForm.find_by_token(params[:token])
      render template: 'api/contact_form_loader_js',layout: false, :mime_type => Mime::JS
    else
      render :status => 500
    end
  end

  def contact_form_options
    #TODO verify originating domain
    cors_set_access_control_headers
    head :ok
  end

  def contact_form_post
    form = params[:form]
    puts form
    # submit the form return 200 for success, validation errors otherwise
  end
end

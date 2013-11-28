class ApiController < ApplicationController

  respond_to :html, :json

  #onboarding options for cors
  def contact_form_options
    #TODO verify originating domain
    cors_set_access_control_headers
    head :ok
  end

  #submit form
  def contact_form_post
    form = params[:form]
    puts form
    # submit the form return 200 for success, validation errors otherwise
  end

  def controller(template_name)
    if params[:token]
      @form = ContactForm.find_by_token(params[:token])
      render template: template_name,layout: false, :mime_type => Mime::JS
    else
      render :status => 500
    end
  end

  def form(template_name)
    if params[:token]
      @form = ContactForm.find_by_token(params[:token])
      render template: template_name,layout: false
    else
      render :status => 500
    end
  end

  #angular stuff
  def angular_form
    form 'api/contact_form_get_angular'
  end

  def angular_controller
    controller 'api/contact_form_angular_controller_js'
  end

  def ember_form
    form 'api/contact_form_get_ember'
  end

  def ember_controller
    controller 'api/contact_form_ember_controller_js'
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


end

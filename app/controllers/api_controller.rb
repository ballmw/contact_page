class ApiController < ApplicationController
  def contact_form_test
    # render a test page with the form on it
  end

  def contact_form_get
    # render a form as json
    if params[:token]
      @form = ContactForm.find_by_token(params[:token])
      render template: 'api/contact_form_get_plain',layout: false
    else
      render :status => 500
    end
  end

  def contact_form_post
    # submit the form return 200 for success, validation errors otherwise
  end
end

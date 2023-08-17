class UserMailer < ApplicationMailer
  
  def welcome(resource)
    # Resource is what is passed in the line as the information about the user and this is how we call this infromation in this case for devise users when created.
    @resource = resource

    mail to: @resource.email

    # We all make mistakes forgot to update this once more hence the error.
  end
end

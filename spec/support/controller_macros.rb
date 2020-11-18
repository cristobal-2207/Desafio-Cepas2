module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"]=Devise.mappings[:user]
      user=User.create(email: "test@dev.com", password: "testing", password_confirmation: "testing")
      sign_in user
    end
  end
end
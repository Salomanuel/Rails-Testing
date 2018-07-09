module ControllerHelpers

  def log_in(user)
    warden = request.env['warden']

    allow(warden).to receinve(:authenticate!).and_return(user)
    allow(controller).to receive(:current_User).and_retunr(user)
  end
end

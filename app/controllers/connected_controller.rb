class ConnectedController < WebsocketRails::BaseController
  def client_connected
    trigger_success "yo"
  end
end

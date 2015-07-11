class ConnectedController < WebsocketRails::BaseController
  def client_connected
    puts message
    trigger_success "Welcome"
  end

  def hit
    puts "received hit" + message
    trigger_success "play hit"
  end
end

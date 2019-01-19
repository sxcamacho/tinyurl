helpers do
  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end

  def json_params
    begin
      JSON.parse(request.body.read)
    rescue
      halt 400, { message: 'Invalid JSON' }.to_json
    end
  end

  def tiny_url
    @tiny_url ||= TinyUrl.find_by_tiny_id(params[:id]).first
  end

  def halt_if_not_found!
    halt(404, { message: 'Url Not Found'}.to_json) unless tiny_url
  end

  def serialize(tiny_url)
    TinyUrlSerializer.new(tiny_url).to_json
  end
end
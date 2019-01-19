class TinyUrlSerializer
  def initialize(url)
    @tiny_url = url
  end

  def as_json(*)
    data = {
    url: @tiny_url.url,
    tiny_url: @tiny_url.tiny_url
    }
    data[:errors] = @tiny_url.errors if @tiny_url.errors.any?
    data
  end
end

class RequestMethod

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    response_body = "GET"
    [status, headers, [response_body]]
  end


end

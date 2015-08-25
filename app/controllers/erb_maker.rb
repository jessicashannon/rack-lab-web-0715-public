class ErbMaker

  def initialize(app)
    @app = app

  end

  def call(env)
    if env["PATH_INFO"] == "/"
      template = File.read("lib/templates/index.html.erb")
    else
       template = "<h1><a href='/'>Are you lost?</a></h1>"
    end

    result = ERB.new(template).result(binding)
    Rack::Response.new(result)
  end
end

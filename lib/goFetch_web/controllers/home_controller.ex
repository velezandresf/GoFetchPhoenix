defmodule GoFetchWeb.HomeController do
  use GoFetchWeb, :controller

  def index(conn, _params) do
    token = get_session(conn, :user_token)
    email = get_session(conn, :user_email)
    user_params = %{token: token, email: email}
    IO.inspect(user_params)

    render(conn, "index.html", user_params: user_params)
  end

end

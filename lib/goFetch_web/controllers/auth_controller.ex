
defmodule GoFetchWeb.AuthController do
  use GoFetchWeb, :controller
  plug Ueberauth

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, _params) do
    user_params = %{token: auth.credentials.token, email: auth.info.email}
    singIn(conn, user_params)
  end

  defp singIn(conn, user_params) do
    if user_params.token != '' do
      conn
      |> put_session(:user_token, user_params.token)
      |> put_session(:user_email, user_params.email)
      |> redirect(to: Routes.home_path(conn, :index))
    else
      redirect(conn, to: "/")
    end
  end
end

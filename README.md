
# GoFetch

## 1. Create a Github oAuth applicatión:
1.1 If you dont have a GitHub account follow the next link:
[https://github.com/join](https://github.com/join)

1.2 To create the oAuth App follow the next link:
[https://docs.github.com/en/enterprise-server@3.0/developers/apps/building-oauth-apps/creating-an-oauth-app](https://docs.github.com/en/enterprise-server@3.0/developers/apps/building-oauth-apps/creating-an-oauth-app)

1.3 If you are runing the server locally use:
homepage URL: `http://localhost:4000`
authorization Callback: `http://localhost:4000/auth/github/callback`

**Note**: After creating the oAuth App, enter to it and create a client secret.

## 2. Create .env file in your project directory using .env_template as template
 2.1 Create a .env file and  define `GITHUB_CLIENT_ID`and `GITHUB_CLIENT_SECRET`

**Note**: the values you can get them from step 1

## 3. type `source .env`on the terminal in your project directory

## 4. To start your Phoenix server:
* Install dependencies with `mix deps.get`

* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.  

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more
* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
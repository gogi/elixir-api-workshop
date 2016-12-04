defmodule Apifrenzy.Communicator do
  def show_account_details do
    url = base_url <> "me"
    authdata = [basic_auth: {
      username, password
      }]
    request = %{}
    request_data = URI.encode_query(request)
    HTTPotion.get(url, authdata)
  end

  def send_a_text(message \\ "What's the matter? Cat got Your tongue? :3") do
    authdata = [basic_auth: {String.to_charlist(username), String.to_charlist(password)}]
    # auth_data = {username, password}
    request = %{
      "from"    => "ElixirLive",
      "to"      => "***REMOVED***",
      "message" => "#{message}"
    }

    request_data = URI.encode_query(request)
    HTTPotion.post("#{base_url}SMS", [body: request_data, ibrowse: authdata])
    # HTTPotion.post("#{base_url}SMS", [body: request_data, auth_data: auth_data])
  end

  def base_url do
    "https://api.46elks.com/a1/"
  end

  def username do
    System.get_env("username")
  end

  def password do
    System.get_env("password")
  end
end

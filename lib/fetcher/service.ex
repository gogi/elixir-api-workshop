defmodule Apifrenzy.Service do

  def postal_codes do
    File.read("postal_codes_in_poland.json")
  end
end

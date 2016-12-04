defmodule Apifrenzy.Fetcher do

  def fetcher do
    File.write("postal_codes_in_poland.json", data_set)
  end

  def data_set do
    HTTPotion.get(source).body
  end

  def source do
    "https://api-v3.mojepanstwo.pl/dane/kody_pocztowe"
  end
end

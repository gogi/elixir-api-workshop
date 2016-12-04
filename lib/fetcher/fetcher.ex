defmodule Apifrenzy.Fetcher do

  def fetcher do
    data_set = HTTPotion.get(source).body
  end

  def source do
    "https://api-v3.mojepanstwo.pl/dane/kody_pocztowe"
  end
end

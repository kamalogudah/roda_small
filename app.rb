require "roda"
Pizza = Struct.new(:flavor)

class App < Roda
  plugin :h
  mystery_guest = Pizza.new("Mozzarella")
  route do |r|
    p "ROUTE block"
    r.on "vipi" do
      p "VIPI Block"
      "Sasa daddy"
    end
    r.get "hello", String do |name|
      "<h1>Hello #{name}!<h1>"
    end
    r.get 'mystery_guest' do
      "The Mystery Guest is: #{h mystery_guest}"
    end
    r.on "posts" do
    end
  end
end

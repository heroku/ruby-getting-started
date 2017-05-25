Fabricator(:widget) do
  name { FFaker::CheesyLingo.title }
  description { FFaker::CheesyLingo.paragraph }
  stock { rand(1000000) }
end

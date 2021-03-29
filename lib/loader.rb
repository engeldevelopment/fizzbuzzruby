Dir["#{__dir__}/fizzbuzz/**/*.rb"].sort.each do |source|
    require source
end

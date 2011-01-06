Factory.define(:user) do |f|
  f.email "demo.user@foobar.com"
  f.password "FooBar!"
  f.password_confirmation "FooBar!"
end

Factory.define(:course) do |f|
end

Factory.define(:exam) do |f|
end

Factory.define(:grade) do |f|
  f.value 100
end

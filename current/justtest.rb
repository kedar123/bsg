a=""
for i in 1..5
a << i.to_s + ","
end
as=a.split(",")
p as
p as.include?("1")

module hello.com/hello

go 1.19

replace greeting.com/greeting => ../greeting

require greeting.com/greeting v0.0.0-00010101000000-000000000000

xyz = (2**1000).to_s.split(//).map(&:to_i).inject(:+)
# same as
xyz = (2**1000).to_s
x = xyz.chars.to_i
y = x.sum
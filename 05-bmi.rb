# 题目: 输入体重和身高，输出身体质量指数(BMI)和建议
# BMI 公式为 bmi = ( 体重 / (身高x身高) )，单位是公斤和米
# 如果 BMI < 18.5，显示过轻
# 如果 BMI >= 24，显示过重
# 如果 BMI 介于 18.5 ~ 24，显示正常

print "请输入您的体重(公斤)，然后按 Enter: "
weight = gets

print "请输入您的身高(厘米)，然后按 Enter: "
height = gets
#用to_i 跟 to_f的差別 用to_i的話只取整數 to_f 會取浮點數
bmi = weight.to_f / (height.to_f) **2
bmi = bmi.round(1)

case bmi
when 0..18.5
  x = "過輕"
when 18.5..24
  x = "正常"
else
  x = "太肥惹"
end

puts "您的 BMI 是: #{bmi}"

puts "您的BMI結果是: #{x}"

require "csv"

memo_type = ""
 
while memo_type != "1" || "2"
  
  puts "1(新規でメモを作成) 2(既存のメモを編集する)"
  
  memo_type = gets.chomp.to_s
  

  if memo_type == "1"
    puts "ファイル名を記入（拡張子を除く）"
    memo_file = gets.chomp.to_s
  
    puts "内容を記入。記入したらctrl + dを押す。"
    memo_contents = gets.chomp.to_s
    CSV.open(memo_file + ".csv", "w") do |csv|
    csv << [memo_contents]
  
  end
  break
  
  elsif memo_type == "2"
    puts "どのファイルを編集しますか"
    memo_file = gets.chomp.to_s
  
    puts "内容を記入。記入したらctrl + dを押す。"
    memo_contents = gets.chomp.to_s
    CSV.open(memo_file + ".csv", "a") do |csv|
    csv << [memo_contents]
  
  end
  break
  
  else
    puts "1か2を選択してください。"
  
  end
end
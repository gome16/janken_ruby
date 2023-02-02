class Number
  def janken_selector(number)
    @number = number
  end

  def deflection_selector(number)
    @number = number
  end
end

number_selector = Number.new
janken_rand = Random.new.rand(1..3)
deflection_rand = Random.new.rand(1..4)

puts "1 → グー / 2 → チョキ / 3 → パー"
case number_selector.janken_selector(gets.to_i)
when 1 #ユーザーグーパターン
  puts "あなた　→　グー"
  case janken_rand
  when 1
    puts "相手　→ グー"
    puts "あいこ"

  when 2
    puts "相手 →　チョキ"
    puts "あなたが指定した方向に相手が向いたら勝ちです"
    puts "方向指定 上 → 1 / 右 → 2 / 下 → 3 / 左 → 4"
    if number_selector.deflection_selector(gets.to_i) == deflection_rand 
      puts "勝ち"
    else
      puts "引き分け"
    end

  when 3 
    puts "相手　→ パー"
    puts "相手が指定した方向にあなたが向いたら負けです"
    puts "方向指定 上 → 1 / 右 → 2 / 下 → 3 / 左 → 4"
    if number_selector.deflection_selector(gets.to_i) == deflection_rand
      puts "負け"
    else
      puts "引き分け"
    end
  end

when 2 #ユーザーチョキパターン
  case janken_rand
  when 1
    puts "相手　→ パー"
    puts "相手が指定した方向にあなたが向いたら負けです"
    puts "方向指定 上 → 1 / 右 → 2 / 下 → 3 / 左 → 4"
    if number_selector.deflection_selector(gets.to_i) == deflection_rand
      puts "負け"
    else
      puts "引き分け"
    end

  when 2
    puts "相手　→ チョキ"
    puts "あいこ"

  when 3
    puts "相手 →　パー"
    puts "あなたが指定した方向に相手が向いたら勝ちです"
    puts "方向指定 上 → 1 / 右 → 2 / 下 → 3 / 左 → 4"
    if number_selector.deflection_selector(gets.to_i) == deflection_rand 
      puts "勝ち"
    else
      puts "引き分け"
    end
  end

when 3 #ユーザーパーパターン
  case janken_rand
  when 1
    puts "相手 → グー"
    puts "あなたが指定した方向に相手が向いたら勝ちです"
    puts "方向指定 上 → 1 / 右 → 2 / 下 → 3 / 左 → 4"
    if number_selector.deflection_selector(gets.to_i) == deflection_rand 
      puts "勝ち"
    else
      puts "引き分け"
    end
  when 2
    puts "相手　→ チョキ"
    puts "相手が指定した方向に相手が向いたら負けです"
    puts "方向指定 上 → 1 / 右 → 2 / 下 → 3 / 左 → 4"
    if number_selector.deflection_selector(gets.to_i) == deflection_rand
      puts "負け"
    else
      puts "引き分け"
    end
  when 3
    puts "相手　→ パー"
    puts "あいこ"
  end
end
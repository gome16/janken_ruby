class Janken_game
  def first_game
    while true
      puts "0 → グー / 1 → チョキ / 2 → パー"
      @janken_hand = gets.to_i
      @janken_computer = rand(0..2)
      @select_hand = ["グー","チョキ","パー"]
      puts "あなたは#{@select_hand[@janken_hand]}"
      puts "pcは#{@select_hand[@janken_computer]}"

      if @janken_hand == @janken_computer
        puts "あいこ"

      elsif (@janken_hand == 0 && @janken_computer == 1) || (@janken_hand == 1 && @janken_computer == 2) || (@janken_hand == 2 && @janken_computer == 0)
        return 1
        
      elsif (@janken_hand == 0 && @janken_computer == 2) || (@janken_hand == 1 && @janken_computer == 0) || (@janken_hand == 2 && @janken_computer == 1)
        return 2
        
      else
        puts "番号外指定"
      end

    end   
  end

  def def_select
    puts "方向指定 上 → 0 / 右 → 1 / 下 → 2 / 左 → 3"
    @def_hand = ["上","右","下","左"]
    @def_user = gets.to_i
    @def_computer = rand(0..3)
    puts "あなたは#{@def_hand[@def_user]}"
    puts "pcは#{@def_hand[@def_computer]}"
  end

  def secnd_game
    case first_game
    when 1
      puts "ジャンケン勝ち"
      puts "あなたが指定した方向にpcが向いたら勝ち"

      def_select
      if @def_user == @def_computer
        puts "あなたの勝ち"
        return 3

      else
        puts "じゃんけんからやり直し"
      end

    when 2
      puts "ジャンケン負け"
      puts "pcが指定した方向にあなたが向いたら負け"
      
      def_select
      if @def_user == @def_computer
        puts "あなたの負け"
        return 3
      
      else
        puts "じゃんけんからやり直し"
      end
    end
  end
  
  def game_control
    while true
      if secnd_game == 3
        break
      end
    end
  end
end



janken = Janken_game.new()
janken.game_control()
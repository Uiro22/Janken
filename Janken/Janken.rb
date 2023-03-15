puts "じゃんけん、、、"

class Janken
    def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    @input = gets.chomp.to_i
    
    hand_type = ["グー","チョキ","パー"]
    @my_hand = @input
    @pc_hand = rand(0..2)
        
    puts "ホイ！"
    puts "ーーーーーーーーーーーーーー"
    puts "あなた: #{hand_type[@my_hand]}を出しました"
    puts "相手: #{hand_type[@pc_hand]}を出しました"
    puts "ーーーーーーーーーーーーーー"
        
    if @my_hand == @pc_hand
    puts "あいこで"
    return janken
        
    elsif (@my_hand == 0 && @pc_hand == 1) || (@my_hand == 1 && @pc_hand == 2) || (@my_hand == 2 && @pc_hand == 0)
    puts "あなたの勝ちです"
    @winner = "player"
    acchimuitehoi
        
    elsif (@my_hand == 0 && @pc_hand == 2) || (@my_hand == 1 && @pc_hand == 0) || (@my_hand == 2 && @pc_hand == 1)
    puts "あなたの負けです"
    @winner = "pc"
    acchimuitehoi
            
    elsif @my_hand == 3
    puts "また戦いましょう"
    exit
        
    end
    end


def acchimuitehoi
    puts "あっち向いて〜"
    puts "０（上）１（下）２（左）３（右）"
    @input_hand = gets.chomp.to_i

    hand_type = ["上","下","左","右"]
    @my_hand = @input_hand
    @pc_hand = rand(0..3)
    
    puts "ホイ！"
    puts "ーーーーーーーーーーーーーー"
    puts "あなた: #{hand_type[@my_hand]}"
    puts "相手: #{hand_type[@pc_hand]}"
    puts "ーーーーーーーーーーーーーー"
            
    if @my_hand == @pc_hand && @winner == "pc"
    puts "AIの勝ちです"
                
    elsif @my_hand == @pc_hand && @winner == "player"
    puts "あなたの勝ちです"
        
    else    
    janken
    end
end

    janken_result = true
    while janken_result
    game = Janken.new()
    janken_result = game.janken
    end
end

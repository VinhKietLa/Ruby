class TicTacToe
    def initialize
      @board = Array.new(3) { Array.new(3, "_") }
      @current_player = 'X'
    end
  
    def play
      until game_over?
        display_board
        puts "Player #{@current_player}, enter your move in format row,col (0-based index): "
        row, col = gets.chomp.split(",").map(&:to_i)
        if valid_move?(row, col)
          place_move(row, col)
          switch_player
        else
          puts "Invalid move! Try again.."
        end
      end
      display_board
      display_result
    end
  
    private
  
    def display_board
      @board.each do |row|
        puts row.join(" ")
      end
    end
  
    def valid_move?(row, col)
      row.between?(0, 2) && col.between?(0, 2) && @board[row][col] == '_'
    end
  
    def place_move(row, col)
      @board[row][col] = @current_player
    end
  
    def switch_player
      @current_player = @current_player == 'X' ? 'O' : 'X'
    end
  
    def game_over?
      win? || draw?
    end
  
    def win?
      rows = @board
      cols = @board.transpose
      diags = [[@board[0][0], @board[1][1], @board[2][2]], [@board[0][2], @board[1][1], @board[2][0]]]
  
      [rows, cols, diags].any? do |section|
        section.any? { |line| line.uniq.length == 1 && line.first != '_' }
      end
    end
  
    def draw?
      @board.flatten.none? { |cell| cell == '_' }
    end
  
    def display_result
      if win?
        winner = @current_player == 'X' ? 'O' : 'X'
        puts "Player #{winner} wins!"
      else
        puts "It's a draw!"
      end
    end
  end
  
  TicTacToe.new.play
  
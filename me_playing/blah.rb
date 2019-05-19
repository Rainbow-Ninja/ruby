class String
    def cyan; "\e[36m#{self}\e[0m" end
end

width  = (ARGV[0] || 30).to_i #change 10 changes size of all maze
height = (ARGV[1] || 20).to_i #change width to a number and changes height of maze
seed   = (ARGV[2] || rand(0xFFFF_FFFF)).to_i #rand generates a randome number

srand(seed)

grid = Array.new(height) { Array.new(width, 0) }

# --------------------------------------------------------------------
# 2. Set up constants to aid with describing the passage directions
# --------------------------------------------------------------------

N, S, E, W = 1, 2, 4, 8 #why are they these values??
DX         = { E => 1, W => -1, N =>  0, S => 0 } #move left or right
DY         = { E => 0, W =>  0, N => -1, S => 1 } #move up or down
OPPOSITE   = { E => W, W =>  E, N =>  S, S => N } #turn around

# --------------------------------------------------------------------
# 3. The recursive-backtracking algorithm itself
# --------------------------------------------------------------------

def carve_passages_from(cx, cy, grid)
  directions = [N, S, E, W].sort_by{rand}

  directions.each do |direction|
    nx, ny = cx + DX[direction], cy + DY[direction] #first nx, ny mention

    if ny.between?(0, grid.length-1) && nx.between?(0, grid[ny].length-1) && grid[ny][nx] == 0
      grid[cy][cx] |= direction
      grid[ny][nx] |= OPPOSITE[direction]
      carve_passages_from(nx, ny, grid)
    end
  end
end

carve_passages_from(0, 0, grid) #cx, cy values are 0

# --------------------------------------------------------------------
# 4. A simple routine to emit the maze as ASCII
# --------------------------------------------------------------------

puts " " + "_".cyan * (width * 2 - 1)
height.times do |y|
  print "|".cyan
  width.times do |x|
    print((grid[y][x] & S != 0) ? " " : "_".cyan)
    if grid[y][x] & E != 0
      print(((grid[y][x] | grid[y][x+1]) & S != 0) ? " " : "_".cyan)
    else
      print "|".cyan
    end
  end
  puts
end


# --------------------------------------------------------------------
# 5. Show the parameters used to build this maze, for repeatability
# --------------------------------------------------------------------

puts "#{$0} #{width} #{height} #{seed}"

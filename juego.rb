player=ARGV[0]
plays=['piedra','papel','tijera']
playerwin=[-2,1]
unless plays.include?(player)
    puts "Argumento inválido: Debe ser piedra, papel o tijera"
else
    play_int=plays.index(player)
    com=rand(0..2)
    puts "Computador juega #{plays[com]}. Ganaste."  if playerwin.include?(play_int-com)
    puts "Computador juega #{plays[com]}. Empataste" if play_int-com==0
    puts "Computador juega #{plays[com]}. Perdiste"  if playerwin.include?((play_int-com)*-1)
end
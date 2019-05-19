class String
    def cyan; "\e[36m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
    def yellow; "\e[33m#{self}\e[0m" end
end

#method to print a congratulatory message
def messagePrint(top, message, bottom)
   system("clear")
   print top
   print message
   print bottom
   sleep(0.1)
end

#defining the congrats message
#flashing stars at the end of the game
def congrats_msg()
   start = 0

   starstop1 = "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *\n\n".cyan
   starsbottom1 = "\n*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * ".cyan
   starstop2 = " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  \n\n".red
   starsbottom2 = "\n *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  ".red
   starstop3 = "  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * \n\n"
   starsbottom3 = "\n*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *"
   message = "Congratulations!\n\n".center(starstop3.length).yellow

   while(start <= 20)
      messagePrint(starstop1, message, starsbottom1)
      messagePrint(starstop2, message, starsbottom2)
      messagePrint(starstop3, message, starsbottom3)
      start +=1
   end
end

congrats_msg
program printName
    implicit none

    character (len = 20) :: f_name
    
    print *, "enter your first name"
    print *, "up to 20 letters"

    read *, f_name

    print "(20x, a)", f_name

endprogram printName
program driveDataType
    type Books
        character(len=50) :: title
        character(len=50) :: author
        character(len=150) :: subject
        integer :: book_id
    endtype Books

    type(Books) book1
    type(Books) book2

    book1%title = "C programming"
    book1%author = "Nuha Ali"
    book1%subject = "C Programming Tutorial"
    book1%book_id = 6495407 
    
    book2%title = "Telecom Billing"
    book2%author = "Zara Ali"
    book2%subject = "Telecom Billing Tutorial"
    book2%book_id = 6495700
    
    Print *, book1%title 
    Print *, book1%author 
    Print *, book1%subject 
    Print *, book1%book_id  
    
    Print *, book2%title 
    Print *, book2%author 
    Print *, book2%subject 
    Print *, book2%book_id  

end program driveDataType
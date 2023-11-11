(defrule p1
   (or ?p <- (start))
   =>
   (printout t crlf crlf "How Old are You? " crlf " 1. Under 13" 
   crlf " 2. Between 13-19" crlf " 3. 20 or Above" 
   crlf crlf "Enter Your Answer (1|2|3): ")
   (assert (age (read)))
   (retract ?p)
)



;-----------Ask Gender from Kids---------------------

(defrule ask-gender
   (age 1)
   =>
   (printout t crlf crlf "You are a,"crlf" 1.) Girl" 
   crlf " 2.) Boy" crlf crlf "Enter Your Answer (1|2): ")
   (assert (gender (read))))
   
;-----------Ask Preferred Genre from Kids--------------------- 
 
(defrule ask-genre (or(gender 1)(gender 2))=>
(printout t crlf crlf "what genre do you prefer?" crlf " 1. Animaion" 
crlf " 2. Fantasy"
crlf " 3. Comedy"
crlf " 4. Musical"
crlf " 5. Kids"
crlf crlf "Enter Your Answer (1|2|3|4|5): ")
(assert(kids-genre (read))))

;-----------Ask Preferred movie year from teens and adults---------------------

(defrule ask-year-teen-adult (or(age 2)(age 3))=>
(printout t crlf crlf "Do you prefer most recent movies or older classics? " 
crlf " 1. Most Recent" crlf " 2. Older Classics" 
crlf crlf "Enter Your Answer (1|2): ") 
(assert(year (read)))) 

;-----------Ask preferred genre from teens and adults---------------------

(defrule ask-genre-teen-adult (or(year 1)(year 2))=>
(printout t crlf crlf "What Movie genre Do you prefer? " 
crlf " 1. Adventure" 
crlf " 2. Horror"
crlf " 3. Comedy"
crlf " 4. Drama"
crlf " 5. Romance"
crlf crlf "Enter Your Answer (1|2|3|4|5): ")
(assert(teen-adult-genre (read)))) 

;-----------Movie Recommendation---------------------

;-----------Rule-01 kids Girl Animation---------------------
(defrule nemo (age 1)(gender 1)(kids-genre 1) => 
(printout t crlf crlf "Movie Recommended is:** Nemo **" crlf crlf)) 

;-----------Rule-02-kids Girl Fantasy---------------------
(defrule stardust (age 1)(gender 1)(kids-genre 2) => 
(printout t crlf crlf "Movie Recommended is: **Star Dust**" crlf crlf )) 

;-----------Rule-03-kids Girl Comedy---------------------
(defrule going-on (age 1)(gender 1)(kids-genre 3) => 
(printout t crlf crlf "Movie Recommended is: **13 going on 30**" crlf crlf)) 

;-----------Rule-04-kids Girl Musical---------------------
(defrule matilda (age 1)(gender 1)(kids-genre 4) => 
(printout t crlf crlf"Movie Recommended is: **Matilda**"crlf crlf )) 

;-----------Rule-05-kids Girl Kids---------------------
(defrule princess (age 1)(gender 1)(kids-genre 5) => 
(printout t crlf crlf"Movie Recommended is: **A Little Princess**" crlf crlf))

;-----------Rule-06-kids Boy Animation---------------------
(defrule cars (age 1)(gender 2)(kids-genre 1) => 
(printout t crlf crlf"Movie Recommended is: **Cars**" crlf crlf)) 

;-----------Rule-07-kids Boy Fantasy---------------------
(defrule harry-potter (age 1)(gender 2)(kids-genre 2) => 
(printout t crlf crlf"Movie Recommended is: **Harry Potter**" crlf crlf))

;-----------Rule-08-kids Boy comedy---------------------
(defrule home-alone (age 1)(gender 2)(kids-genre 3) => 
(printout t crlf crlf"Movie Recommended is: **Home Alone**" crlf crlf))  

;-----------Rule-09-kids Boy Musical---------------------
(defrule wizard (age 1)(gender 2)(kids-genre 4) => 
(printout t crlf crlf"Movie Recommended is: **The Wizard of the OZ**" crlf crlf)) 

;-----------Rule-10-kids Boy Musical---------------------
(defrule mary (age 1)(gender 2)(kids-genre 5) => 
(printout t crlf crlf"Movie Recommended is: **Mary Poppins**" crlf crlf)) 

;-----------Rule-11-Teens Recent Adventure---------------------
(defrule henry-sugar (age 2)(year 1)(teen-adult-genre 1) => 
(printout t crlf crlf"Movie Recommended is: **Henry Sugar**" crlf crlf))

;-----------Rule-12-Teens Recent Horror---------------------
(defrule nun (age 2)(year 1)(teen-adult-genre 2) => 
(printout t crlf crlf"Movie Recommended is: **The Nun 2**" crlf crlf))

;-----------Rule-13-Teens Recent Comedy---------------------
(defrule do-revenge (age 2)(year 1)(teen-adult-genre 3) => 
(printout t crlf crlf"Movie Recommended is: **Do revenge**" crlf crlf))

;-----------Rule-14-Teens Recent Drama---------------------
(defrule little-women (age 2)(year 1)(teen-adult-genre 4) => 
(printout t crlf crlf"Movie Recommended is: **Little Women**" crlf crlf)) 

;-----------Rule-15-Teens Recent Romance---------------------
(defrule purple-hearts (age 2)(year 1)(teen-adult-genre 5) => 
(printout t crlf crlf"Movie Recommended is: **Purple Hearts**" crlf crlf))

;-----------Rule-16-Teens Older Adventure---------------------
(defrule lotr (age 2)(year 2)(teen-adult-genre 1) => 
(printout t crlf crlf"Movie Recommended is: **Lord of The Rings**" crlf crlf))

;-----------Rule-17-Teens Older Horror---------------------
(defrule anabelle (age 2)(year 2)(teen-adult-genre 2) => 
(printout t crlf crlf"Movie Recommended is: **Anabelle**" crlf crlf))

;-----------Rule-18-Teens Older Comedy---------------------
(defrule wimpy-kid (age 2)(year 2)(teen-adult-genre 3) => 
(printout t crlf crlf"Movie Recommended is: **Diary of a Wimpy Kid**" crlf crlf))

;-----------Rule-19-Teens Older Drama---------------------
(defrule clueless (age 2)(year 2)(teen-adult-genre 4) => 
(printout t crlf crlf"Movie Recommended is: **Clueless**" crlf crlf)) 

;-----------Rule-20-Teens Older Romance---------------------
(defrule twilight (age 2)(year 2)(teen-adult-genre 5) => 
(printout t crlf crlf"Movie Recommended is: **Twilight**" crlf crlf))






;-----------Rule-21-Adult Recent Adventure---------------------
(defrule lost-city (age 3)(year 1)(teen-adult-genre 1) => 
(printout t crlf crlf"Movie Recommended is: **Lost City**" crlf crlf))

;-----------Rule-22-Adult Recent Horror---------------------
(defrule scream (age 3)(year 1)(teen-adult-genre 2) => 
(printout t crlf crlf"Movie Recommended is: **Scream**" crlf crlf))

;-----------Rule-23-Adult Recent Comedy---------------------
(defrule old-dads (age 3)(year 1)(teen-adult-genre 3) => 
(printout t crlf crlf"Movie Recommended is: **Old Dads**" crlf crlf))

;-----------Rule-24-Adult Recent Drama---------------------
(defrule heart-os-stone (age 3)(year 1)(teen-adult-genre 4) => 
(printout t crlf crlf"Movie Recommended is: **Heart of Snow**" crlf crlf)) 

;-----------Rule-25-Adult Recent Romance---------------------
(defrule my-fault (age 3)(year 1)(teen-adult-genre 5) => 
(printout t crlf crlf"Movie Recommended is: **My Fault**" crlf crlf))

;-----------Rule-26-Adult Older Adventure---------------------
(defrule shawshank-redemption (age 3)(year 2)(teen-adult-genre 1) => 
(printout t crlf crlf"Movie Recommended is: **Shawshank Redemption**" crlf crlf))

;-----------Rule-27-Adult Older Horror---------------------
(defrule psycho (age 3)(year 2)(teen-adult-genre 2) => 
(printout t crlf crlf"Movie Recommended is: **Psycho**" crlf crlf))

;-----------Rule-28-Adult Older Comedy---------------------
(defrule ted (age 3)(year 2)(teen-adult-genre 3) => 
(printout t crlf crlf"Movie Recommended is: **Ted**" crlf crlf))

;-----------Rule-29-Adult Older Drama---------------------
(defrule attonement (age 3)(year 2)(teen-adult-genre 4) => 
(printout t crlf crlf"Movie Recommended is: **Attonement**" crlf crlf)) 

;-----------Rule-30-Adult Older Romance---------------------
(defrule the-notebook (age 3)(year 2)(teen-adult-genre 5) => 
(printout t crlf crlf"Movie Recommended is: **The Notebook**" crlf crlf))

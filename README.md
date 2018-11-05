# My Vim Config 

# My VIM Chichi

# Work with text

# Hello VIM

#vimtutor!

hjkl
w
e
b

w - next word
e - next end word

a - insert mode and coursor after word
i - insert mode and coursor before word
yy - copy 
p - past 
P - past be coursor

# search in file
/word
n - next word 
N - back word 

# search in dir, for example "def work"

grep -F 'def work' **/*.rb  

# open file in console
ew and enter 


f - find word in text like f + word, f a 

o - new line 
0 - go to first line 
$ - last line 
u - undo 

q = recoring (what?)
zz - midle page
gg - start page
G - end page
2G - second string  
d - delete word 
dd - delete string 
d$ - delete to the end of the line 
c$ - delete and insert mode
2d - 2 delete
x - delete chapter 
rx - change word in normal mode
ce - change all words in word in insert mode
ci" - change in ""
ci{ - change in {}
. - repeat last command

This is a text "new param"

I - insert from start od the text
2Fa - find second a in the text 
A - insert text in the end of the line
    

# Git chichi

# all modified files in a git repository
git status | grep modified


# From Vimtutor

  1. To delete from the cursor up to the next word type:    dw
  2. To delete from the cursor to the end of a line type:    d$
  3. To delete a whole line type:    dd

  4. To repeat a motion prepend it with a number:   2w
  5. The format for a change command is:
               operator   [number]   motion
     where:
       operator - is what to do, such as  d  for delete
       [number] - is an optional count to repeat the motion
       motion   - moves over the text to operate on, such as  w (word),
                  $ (to the end of line), etc.

  6. To move to the start of the line use a zero:  0

  7. To undo previous actions, type:           u  (lowercase u)
     To undo all the changes on a line, type:  U  (capital U)
     To undo the undo's, type:                 CTRL-R


                               Lesson 4 SUMMARY


  1. CTRL-G  displays your location in the file and the file status.
             G  moves to the end of the file.
     number  G  moves to that line number.
            gg  moves to the first line.

  2. Typing  /  followed by a phrase searches FORWARD for the phrase.
     Typing  ?  followed by a phrase searches BACKWARD for the phrase.
     After a search type  n  to find the next occurrence in the same direction
     or  N  to search in the opposite direction.
     CTRL-O takes you back to older positions, CTRL-I to newer positions.

  3. Typing  %  while the cursor is on a (,),[,],{, or } goes to its match.

  4. To substitute new for the first old in a line type    :s/old/new
     To substitute new for all 'old's on a line type       :s/old/new/g
     To substitute phrases between two line #'s type       :#,#s/old/new/g
     To substitute all occurrences in the file type        :%s/old/new/g
     To ask for confirmation each time add 'c'             :%s/old/new/gc

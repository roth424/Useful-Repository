'------------------------------------------------
'This is a summary of what was covered yesterday.
'Tuesday, June 4th, 2019
'------------------------------------------------

'First, we introduced the For...Next loop
Sub ForNextLoop()
    Dim i as Integer
    For i = 1 to 20
        Cells(i, 1).Value = 1
        Cells(1, i).Value = 5
        Cells(i + 1, 2).Value = i + 1
    Next i
End Sub

'Then you did the Chicken Nugget Exercise
Sub Chicken()
    Dim i as Integer
    For i = 1 to 10
        Cells(i, 1) = "I will eat"
        Cells(i, 2) = i + 10
        Cells(i, 3) = "Chicken Nuggets"
    Next i
End Sub

'Then I introduced the Modulus (Mod) operator and
'nesting Conditionals inside Loops.  I also mentioned using the _ 
'as a line continuation character.
'And then you did the FizzBuzz exercise
Sub OddsAndEvens()
    Dim i as Integer
    For i = 1 to 100
        If i Mod 2 = 0 Then
            Cells(i, 2).Value = "i is Even"
        Else
            Cells(i, 2).Value = "i is Odd"
        End If
    Next i
End Sub

Sub FizzBuzz()
    Dim i as Integer
    Dim num as Integer

    ' Loop through the values in Column 1
    For i = 2 To 100

        'Set cell value to variable
        num = Cells(i, 1).Value

        ' Check if the number is divisible by 3 and 5....
        If (num Mod 3 = 0 And num Mod 5 = 0) Then

            ' If so, print Fizzbuzz
            Cells(i, 2).Value = "Fizzbuzz"

        ' Check if the number is divisible by just 3...
        ElseIf (num Mod 3 = 0) Then

            ' If so, print "Fizz"
            Cells(i, 2).Value = "Fizz"

        ' Check if the number is divisible by just 5...
        ElseIf (num Mod 5 = 0) Then

            ' If so, print "Buzz"
            Cells(i, 2).Value = "Buzz"

        End If

    Next i

End Sub

'Next, you did the Lotto Search Exercise
'This exercise did not involve Modulus.
'It did involve looping through the data,
'looking for specific values, so a For...Next loop,
'with conditionals inside it
Sub Lotto_Winners()

    ' Create variables to hold winners. 
    ' (Use "Long" because the numbers exceed the limit for integers) 
    Dim first_place As Long
    Dim second_place As Long
    Dim third_place As Long
    Dim runner1 As Long
    Dim runner2 As Long
    Dim runner3 As Long

    ' Establish the winning ticket numbers
    first_place = 3957481
    second_place = 5865187
    third_place = 2817729

    ' Establish the runner-up numbers
    runner1 = 2275339
    runner2 = 5868182
    runner3 = 1841402

    Dim i as Integer

    ' Loop through each of the lotto tickets
    For i = 1 To 1001

        ' Check if the lotto number matches the first place winner...
        If Cells(i, 3).Value = first_place Then

            ' If so, create a message box specifying the first place win
            MsgBox " Congratulations " + Cells(i, 1).Value

            ' Retrieve the values associated with the winner and enter them into the winner's box.
            Cells(2, 6).Value = Cells(i, 1).Value
            Cells(2, 7).Value = Cells(i, 2).Value
            Cells(2, 8).Value = first_place

        ' Check if the lotto number matches the second place winner...
        ElseIf Cells(i, 3).Value = second_place Then
            
            ' Retrieve the values associated with the winner and enter them into the winner's box.
            Cells(3, 6).Value = Cells(i, 1).Value
            Cells(3, 7).Value = Cells(i, 2).Value
            Cells(3, 8).Value = second_place

        ' Check if the lotto number matches the second place winner...
        ElseIf Cells(i, 3).Value = third_place Then
           
            ' Retrieve the values associated with the winner and enter them into the winner's box.
            Cells(4, 6).Value = Cells(i, 1).Value
            Cells(4, 7).Value = Cells(i, 2).Value
            Cells(4, 8).Value = third_place

        ' Ends this series of IF/ELSE conditionals
        End If

    Next i

    ' Loop through the lotto tickets a second time to find 
    ' the first instance of a "runner-up" winner

    Dim runner_up as Long

    For i = 1 to 1001

        ' BONUS: Check for runner ups with an OR operator
        If Cells(i, 3).Value = runner1 Or Cells(i, 3).Value = runner2 Or Cells(i, 3).Value = runner3 Then
            
            ' Retrieve the values associated with the winner and enter them into the winner's box.
            runner_up = Cells(i, 3).Value
            Cells(5, 6).Value = Cells(i, 1).Value
            Cells(5, 7).Value = Cells(i, 2).Value
            Cells(5, 8).Value = runner_up

            ' If first match is found, exit the for loop
            Exit for

        End If

    Next i 

End Sub

'Next, we looked at Nested For Loops
'i.e. a For...Next loop inside another For...Next loop
'This is done to explore a two-dimensional array,
'like a spreadsheet.
'In other languages, we will do this same thing to get at 
'rows and columns of data.
'Note: .Value is the default property for Cells(), so I don't 
'necessarily have to specify it

'This example creates the 12 times tables.
Sub LoopThroughRowsAndColumns1()
    Dim row as Integer
    Dim col as Integer
    For row = 1 to 12
        Cells(row + 1, 1) = row 
        For col = 1 to 12
            Cells(1, col + 1) = col
            Cells(row + 1, col + 1) = row * col
        Next col
    Next row
End Sub

'Then you worked on the Hornets Exercise

' Part I: Count the number of Hornets Found
' Part II: Each time you find Hornets replace them with Bugs or Bees
' Part III: You have a max amount of Bees and Hornets, utilize no more than what's provided. 
'   If there are still hornets left, provide the user with a message stating: "Looks like we still have hornets..."
'   If there are no more hornets left, provide the user with a message stating: "Great! We got rid of all the hornets."

Sub HornetsNest1()

  ' PART I
  ' ------------------------------------------------
  ' Create a variable to hold the number of hornets
  Dim HornetsCount as Integer
  Dim i as Integer
  Dim j as Integer

  ' Set the initial value for the HornetsCount to 0 
  HornetsCount = 0

  ' Loop through all rows
  For i = 1 to 6

    ' Loop through all columns
    For j = 1 to 7

      ' If the value of a cell is equal to Hornets
      If Cells(i, j).Value = "Hornets" Then

        ' Add to the HornetsCounter
        HornetsCount = HornetsCount + 1 

      End If

    Next j

  Next i

  ' Show the number of hornets found
  MsgBox(HornetsCount & " Hornets Found")

End Sub

Sub HornetsNest2()

  ' PART II
  ' ------------------------------------------------
  ' Create a variable to hold the number of hornets
  Dim HornetsCount as Integer

  ' Set the initial value for the HornetsCount to 0 
  HornetsCount = 0

  ' Loop through all rows
  For i = 1 to 6

    ' Loop through all columns
    For j = 1 to 7

      ' If the value of a cell is equal to Hornets
      If Cells(i, j).Value = "Hornets" Then

        ' Add to the HornetsCounter
        HornetsCount = HornetsCount + 1 

        ' Replace the Hornets with Bugs
        Cells(i, j).Value = "Bugs"

      End If

    Next j

  Next i

  ' Show the number of hornets found
  MsgBox(HornetsCount & " Hornets Found")

End Sub

Sub HornetsNest3()

  ' PART III
  ' ------------------------------------------------
  ' Create a variable to hold the number of hornets
  Dim HornetsCount As Integer

  ' Create a variable to hold the number of bugs and bees
  Dim BugsCount As Integer
  Dim BeesCount As Integer

  ' Set the value of Bugs and Bees counters
  BugsCount = Range("L2").Value
  BeesCount = Range("R2").Value

  Dim i as Integer
  Dim j as Integer

  ' Set the initial value for the HornetsCount to 0
  HornetsCount = 0

  ' Loop through all rows
  For i = 1 To 6

    ' Loop through all columns
    For j = 1 To 7

      ' If the value of a cell is equal to Hornets
      If Cells(i, j).Value = "Hornets" Then

        ' Add to the HornetsCounter
        HornetsCount = HornetsCount + 1

        ' Check if we have bugs available
        If (BugsCount > 0) Then

          ' Replace the Hornets with Bugs
          Cells(i, j).Value = "Bugs"

          ' Subtract from the Bugs Count
          BugsCount = BugsCount - 1

        ' Check if we have bees available
        ElseIf (BeesCount > 0) Then

          ' Replace the Hornets with Bees
          Cells(i, j).Value = "Bees"

          ' Subtract from the Bees Count
          BeesCount = BeesCount - 1

        End If

      End If
      
    Next j

  Next i

  ' Show the number of hornets found
  MsgBox (HornetsCount & " Hornets Found")

  ' Create the final message if we still have hornets
  If (Range("L2").Value + Range("R2").Value < HornetsCount) Then
    
    MsgBox ("Oh no! We still have hornets... ")

  End If

End Sub

'Finally, you worked on the Star Counter exercise
'This involved an if inside a loop inside another loop

' StarCounter
' 1. Create a nested for loop that iterates through each student.
' 2. For each loop count the number of instances of the word "Full-Star" using a counter
' 3. Save the counter value to the total cell
' 4. BONUS: Instead of hard-coding the last number of the loop, use VBA to determine the last row.
' 5. BONUS: Create two charts:
     ' One to see if there is a relationship between Program type and Rating
     ' One to see if there is a relationship between Date and Rating

Sub StarCounter()

  ' Create a variable to hold the StarCounter. We will repeatedly use this.
  Dim StarCounter As Integer
  
  ' BONUS: counts the number of rows
  lastrow = Cells(Rows.Count, 1).End(xlUp).Row
 
  ' Loop through each row
  ' BONUS: use lastrow variable instead of 51
  For i = 2 To lastrow

    ' Initially set the StarCounter to be 0 for each row
    StarCounter = 0

    ' While in each row, loop through each star column
    For j = 4 To 8

      ' If a column contains the word "Full-Star"...
      If (Cells(i, j).Value = "Full-Star") Then

        ' Add 1 to the StarCounter
        StarCounter = StarCounter + 1

      End If

    Next j

    ' Once we've iterated through each column in row i, print the value in the total column.
    Cells(i, 9).Value = StarCounter

  Next i

End Sub

'------------------------------------------------
'Tomorrow, Thursday June 6, we will be covering
'the following topics.
'------------------------------------------------

'Using loops inside loops to change the formatting of cells.

'Combining a cascading If statement with some formatting
'Cascading If statements look like this:

If finalGrade > 90 Then
    letter = "A"
ElseIf finalGrade > 80 Then
    letter = "B"
ElseIf finalGrade > 70 Then
    letter = "C"
ElseIf finalGrade > 60 Then
    letter = "D"
Else
    letter = "F"
End If

'Putting it all together...
'Use an If that uses Mod, inside a Loop, inside another Loop
'to format a checkerboard.

'Then we will be introducing the ability to look ahead at the
'next cell.  This is a common pattern when you have sections
'of data of a variable length.
'For example:
' Cat, Rumpleteaser
' Cat, Rum-tum-tugger
' Cat, Annabelle
' Cat, In-the-hat
' Cat, Mr. Mistoffeles
' Dog, Spot
' Dog, Fido
' Dog, Lucky
' Fish, Guppy
' Fish, Shark
' Skunk, Pepe
' Duck, Donald
' Snake, Kaa
' Snake, Satan
' Snake, Diamond

'The idea is to put the first value into a variable,
'then look ahead 1 row to see if the next row has the
'same value, or a different one.  If it's different,
'do your end-of-section processing, if not, increment
'your counters, sums, etc. and keep going.

'Then we will be doing a larger exercise.  
'More like a mini-project in two parts actually.
'The first part will be formatting multiple Worksheets
'within the same Workbook.
'The second part will be combining the data from all
'the sheets onto a summary worksheet.

'With that, you should be able to finish the Excel-VBA homework.

'Depending on how much time we have, we may start Python 
'tonight too...

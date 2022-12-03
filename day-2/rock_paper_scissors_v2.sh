#!/bin/bash

awk -v rock='1' -v paper='2' -v scissors='3' '{
  if ($1 == "A")
    {x=rock}
  else if ($1 == "B")
    {x=paper}
  else if ($1 == "C")
    {x=scissors}
  if ($2 == "X" && x == rock)
    {y=scissors}
  else if ($2 == "X" && x == paper)
    {y=rock}
  else if ($2 == "X" && x == scissors)
    {y=paper}
  if ($2 == "Z" && x == rock)
    {y=paper}
  else if ($2 == "Z" && x == paper)
    {y=scissors}
  else if ($2 == "Z" && x == scissors)
    {y=rock}
  else if ($2 == "Y")
    {y=x}
  if ( (x == rock && y == scissors) || (x == scissors && y == paper) || (x == paper && y == rock) )
      {sum+=y+0}
    else if (x == y)
      {sum+=y+3}
    else
      {sum+=y+6}}
  END {print sum}' input.txt
# {print x " " y}' test_input.txt

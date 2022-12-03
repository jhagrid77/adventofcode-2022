#!/bin/bash

awk -v rock='1' -v paper='2' -v scissors='3' '{
  if ($1 == "A")
    {x=rock}
  else if ($1 == "B")
    {x=paper}
  else
    {x=scissors}
  if ($2 == "X")
    {y=rock}
  else if ($2 == "Y")
    {y=paper}
  else
    {y=scissors}
  if ( (x == rock && y == scissors) || (x == scissors && y == paper) || (x == paper && y == rock) )
      {sum+=y+0}
    else if (x == y)
      {sum+=y+3}
    else
      {sum+=y+6}}
  END {print sum}' input.txt

#!/bin/bash

xargs -n1 git clone <teamteslarepo.txt

tr -s " " <./first_assignment/teslamembersdetails.txt | sed 's/ /,/g' > teamteslamembers.csv

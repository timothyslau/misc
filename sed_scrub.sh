#! /bin/bash
file0=1Cinder
path1=/Users/laut/Downloads/LunarChronicles/$file0
file1=$file0.epub
pandoc -f epub -t plain -o $path1/test1.txt $path1/$file1

# check that scrubbing is necessary
grep -owi 'fuck\|shit\|bastard\|asshole\| ass \|cunt\|bitch\|pussy\|dick\| cock \|cunt\|goddamnit\|damn' $path1/test1.txt | wc -l

# https://pandoc.org/MANUAL.html#option--from
# pandoc -f epub -t plain -o /Users/laut/Downloads/test/test1.txt /Users/laut/Downloads/test/test1.epub
# sed -i '' -E 's/the|.|and/XXX/ig' /Users/laut/Downloads/test/test1.txt
# pandoc -f plain -t epub -o /Users/laut/Downloads/test/test2.epub /Users/laut/Downloads/test/test1.txt

# works
# pandoc /Users/laut/Downloads/test/test1.txt -o /Users/laut/Downloads/test/test2.epub --metadata title="test1 title" --epub-cover-image="/"


# Lunar Chronicles
# pandoc -f epub -t plain -o /Users/laut/Downloads/Lunar\ Chronicles/2Scarlet/2Scarlet.txt /Users/laut/Downloads/Lunar\ Chronicles/2Scarlet/2Scarlet.epub --extract-media=/Users/laut/Downloads/Lunar\ Chronicles/2Scarlet
# sed -i '' -E 's/fuck|shit|bastard|asshole| ass |cunt|bitch|pussy|dick| cock |cunt|goddamnit|damn/XXX/ig' /Users/laut/Downloads/Lunar\ Chronicles/2Scarlet/2Scarlet.txt
# pandoc /Users/laut/Downloads/Lunar\ Chronicles/2Scarlet/2Scarlet.txt -o /Users/laut/Downloads/Lunar\ Chronicles/2Scarlet/2Scarlet_clean.epub --metadata title="Scarlet" --epub-cover-image=/Users/laut/Downloads/Lunar\ Chronicles/2Scarlet/images/9781250037633.jpg






















#######################################
############### ARCHIVE ###############
#######################################
# example

# echo day | sed s/day/night/

# echo "123 abc" | sed 's/[0-9]*/& def/' # 123 def abc
# echo "123 abc" | sed 's/[0-9]*/& &/' # 123 123 abc

# echo "Words words WORDS" | sed 's/words/XXX/' # Words XXX WORDS
# echo "Words words WORDS" | sed 's/words|Words/XXX/' # Words XXX WORDS


# sed 's/a|/b/XXX/i' /Users/laut/Downloads/temp1.txt
# sed 's/A/XXX/g' /Users/laut/Downloads/temp1.txt > /Users/laut/Downloads/temp2.txt
# sed -e 's/A/XXX/g' -e 's/B/YYY/g' /Users/laut/Downloads/temp1.txt > /Users/laut/Downloads/temp2.txt

# LC_ALL=C sed -E 's/bat|dog|fish/XXX/ig' /Users/laut/Downloads/temp1.txt > /Users/laut/Downloads/temp2.txt

# sed -E 's/bat|dog|fish/XXX/ig' /Users/laut/Downloads/temp1.epub > /Users/laut/Downloads/temp2.epub

# LC_ALL=C sed -E 's/fuck|shit|damn|bastard|asshole|cunt|hell|bitch|pussy|dick/XXX/ig' /Users/laut/Downloads/ebooks_for_WI_trip/Meyer_Marissa_Cinder.epub > /Users/laut/Downloads/ebooks_for_WI_trip/Meyer_Marissa_Cinder_EDITED.epub
# LC_ALL=C sed -E 's/fuck|shit|damn|bastard|asshole|cunt|hell|bitch|pussy|dick/XXX/ig' /Users/laut/Downloads/ebooks_for_WI_trip/Farmer_Nancy_The_House_of_the_Scorpion.epub > /Users/laut/Downloads/ebooks_for_WI_trip/Farmer_Nancy_The_House_of_the_Scorpion_EDITED.epub
# LC_ALL=C sed -E 's/fuck|shit|damn|bastard|asshole|cunt|hell|bitch|pussy|dick/XXX/ig' /Users/laut/Downloads/ebooks_for_WI_trip/Heinlein_Robert_Have_Space_Suit_Will_Travel.epub > /Users/laut/Downloads/ebooks_for_WI_trip/Heinlein_Robert_Have_Space_Suit_Will_Travel_EDITED.epub
# LC_ALL=C sed -E 's/fuck|shit|damn|bastard|asshole|cunt|hell|bitch|pussy|dick/XXX/ig' /Users/laut/Downloads/ebooks_for_WI_trip/Card_Orson_Enders_Game.epub > /Users/laut/Downloads/ebooks_for_WI_trip/Card_Orson_Enders_Game_EDITED.epub


# zip -X0 "/Users/laut/Downloads/test/test1.epub" mimetype
# zip -rDX9 "full path to new epub file" * -x "*.DS_Store" -x mimetype
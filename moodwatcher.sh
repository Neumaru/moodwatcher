#!/bin/sh

echo "Hi, this app will measure your mood,"
echo
echo "If you want to start, type Y,"
echo "Or No, type N."
echo
echo "If you want to quit, then type Quit."
echo "It can Quit when you want."
echo
echo

while :
do

echo
read -p "Y or N >" start_ask
echo

	case $start_ask in
	[Yy] )
		echo "OK, Let's Start!"
		echo
		echo >> moodwatcher_history
		echo "*****" >> moodwatcher_history
		date >> moodwatcher_history
	break
	;;

	[Nn] )
		echo "Bye! See you later!"
		echo
	exit 0
	;;

	"Quit" | "quit" )
		echo "See you later!"
	exit 0
	;;

	* )
		echo "You can type just Y or N."
		echo
	;;

	esac


done

echo "Is it Day? Or Night?"
echo
echo "If it's Day time, type D,"
echo "Or Night, type N."
echo
echo

while :
do

echo
read -p "D or N >" ask_day_or_night
echo

	case $ask_day_or_night in
	[Dd] )
		echo
		echo
		echo "Day Time" >> moodwatcher_history
	break
	;;

	[Nn] )
		echo
		echo
		echo "Night Time" >> moodwatcher_history
	break
	;;

	"Quit" | "quit" )
		echo "See you later!"
	exit 0
	;;

	* )
		echo
		echo
	;;

	esac

done

echo "What's Weather in your place?"
echo "Is it Sunny? Cloudy? Rainy? Stormy?Snowy?"
echo
echo "If it's Sunny, type S."
echo "Or Cloudy, type C."
echo "If it's Rainy, type R."
echo "Or Stormy, Type T."
echo "Or Snowy, then type N"
echo
echo

while :
do

read -p "S, C, R, T, N >" ask_weather

	case $ask_weather in
	[Ss] )
		echo
		echo
		echo "Sunny" >> moodwatcher_history
		break
	;;

	[Cc] )
		echo
		echo
		echo "Cloudy" >> moodwatcher_history
		break
	;;

	[Rr] )
		echo
		echo
		echo "Rainy" >> moodwatcher_history
		break
	;;

	[Tt] )
		echo
		echo
		echo "Stormy" >> moodwatcher_history
		break
	;;

	[Nn] )
		echo
		echo
		echo "Snowy" >> moodwatcher_history
		break
	;;

	"Quit" | "quit" )
		echo "See you later!"
	exit 0
	;;

	* )
		echo
		echo
	;;

	esac

done

echo "What's Season Where you Live?"
echo "If it is Spring, Type S."
echo "Summer is M, Autumn is A, Winter is W."
echo
echo

while :
do

	read -p "S, M, A, W >" ask_season

	case $ask_season in

	[Ss] )
		echo
		echo
		echo "Spring" >> moodwatcher_history
		break
	;;
	
	[Mm] )
		echo
		echo
		echo "Summer" >> moodwatcher_history
		break
	;;

	[Aa] )
		echo
		echo
		echo "Autumn" >> moodwatcher_history
		break
	;;

	[Ww] )
		echo
		echo
		echo "Winter" >> moodwatcher_history
		break
	;;

	"Quit" | "quit" )
		echo "See you later!"
	exit 0
	;;

	* )
		echo
		echo
	;;

	esac

done


echo "What is your feelings?"
echo
echo "Your feeling is good, then type G,"
echo "Your feeling is Not Good, then type N."
echo
echo

while :
do
	
echo
read -p "G or N >" feeling_first
echo

	case $feeling_first in
	[Gg] )
		good_or_not=G
		echo "That's Nice,"
		echo
		echo "If you can, Write it out your Feelings,"
		echo "It Makes you Comfortable someday!"
		echo "Feeling Good" >> moodwatcher_history
		echo
		break
		;;
			
	[Nn] )
		good_or_not=N
		echo "If your feelings is Rainny now, but it will be Sunny."
		echo
		echo "Let Drink something Hot or Warm. Especially contain Lemon is better."
		echo "Not recommend to drink Alchol."
		echo "Feeling not Good" >> moodwatcher_history
		echo
		break
		;;

	"Quit" | "quit" )
		echo "See you later!"
	exit 0
	;;
				
		* ) 
		echo "You can only G or N."
		echo
		;;

	esac

done

if test $good_or_not = G

then

	echo "Are you Happy or Better, or So-so?"
	echo
	echo "If you are Happy, then type H,"
	echo "And if you are feels Better, type B,"
	echo "Or So-so, type S."
	echo
	echo

	while :
	do

	read -p "H or B, or Soso >" feeling_good

		case $feeling_good in
		[Hh] )
			echo "You must write it out your journal"
			echo "TNot forget your thought and feeling,"
			echo "It will be more comfortable someday."
			echo "Mood is Happy" >> moodwatcher_history
			echo
		break
		;;

		[Bb] )
			echo "Let's drink a cup of tea,"
			echo "It will comfortable your feeling."
			echo "Or eat something sweet, and Tea time."
			echo "Mood is better" >> moodwatcher_history
			echo
		break
		;;

		[Ss] )
			echo "You need something your feeling unbored."
			echo "Would you Colouring your tablet or Colouring book."
			echo "Or, you are tired, you have to get rest."
			echo "Mood is So-so but good" >> moodwatcher_history
			echo
		break
		;;

		"Quit" | "quit" )
			echo "See you later!"
		exit 0
		;;

		* )
		echo "You can type just Happy, Better and Soso."
		echo
		;;

		esac

	done


elif test $good_or_not = N

then

	while :
	do

	echo "Do you depressed? Or afraid? or So-so?"
	echo
	echo "If you depressed, type D,"
	echo "Or afraid, type A,"
	echo "Or your feeling is So-so, then type S."
	echo
	echo

	read -p "depressed or afraid or sad >" feeling_bad

		case $feeling_bad in
		[Dd] )
			echo "If you are not fine, it needs sleep more."
			echo "And eat delicious fooo than everyday, it make you more comfortable."
			echo "Mood is Depressed" >> moodwatcher_history
			echo
		break
		;;

		[Aa] )
			echo "Not need to afraid, if you study/work hard, it will be yours."
			echo "If your feeling is so awful, you have to sleep."
			echo "When you will get up, it will be better."
			echo "Mood is Something Afraid" >> moodwatcher_history
			echo
		break
		;;

		[Ss] )
			echo "If you are sad, watching movies is can help your heart."
			echo "Don't afraid to cry, it will heal your heart."
			echo "Mood is So-so" >> moodwatcher_history
			echo
		break
		;;
		
		"Quit" | "quit" )
			echo "See you later!"
		exit 0
		;;

		* )
		echo "You can type just depressed, afraid and sad."
		echo
		;;

		esac

	done

else 

	break

fi

echo "It is Done to Measure!"
echo "File is made by same directory to moodwatcher_history.txt"
echo "If you want to read back your feeling,"
echo "Type a command $ cat moodwatcher_history"
echo "Bye! See you later!"
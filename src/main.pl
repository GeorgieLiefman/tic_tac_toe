#!/usr/share/env perl
use strict; 
use warnings;

my @cells;

my %validate_move = map { $_ => undef } (1..9);

my $turn = 1;  # 1 or 2, for player 1 or 2, respectively

my %strings = (
	prompt => sub { "              Player $_[0]'s turn: " },
	win => sub { "           Player $_[0] is the winner!\n" },
	tie => "           Tie! No player has won!\n",
	header => "        Player 1 (O) v/s Player 2 (X)\n\n",
	# drawing the board
	cover => " ___ ___ ___ \n",
	walls => "|   |   |   |\n",
	floor => "|___|___|___|\n",
	cells => sub { "| $_[0] | $_[1] | $_[2] |\n" },
	leading_space => "                ",
	1 => "\e[1;34mO\e[m",
	2 => "\e[1;33mX\e[m",
);

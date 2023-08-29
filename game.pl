#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my $number_to_guess = int(rand(100)) + 1;
my $player_guess = 0;
my $attempts = 0;

say "Witaj w grze 'Zgadnij liczbę'!";
say "Spróbuj odgadnąć liczbę od 1 do 100.";

while ($player_guess != $number_to_guess) {
    print "Podaj swoją próbę: ";
    $player_guess = <STDIN>;
    chomp($player_guess);

    if ($player_guess =~ /\D/ || $player_guess < 1 || $player_guess > 100) {
        say "To nie jest poprawna liczba.";
        next;
    }

    $attempts++;

    if ($player_guess > $number_to_guess) {
        say "Za wysoko!";
    } elsif ($player_guess < $number_to_guess) {
        say "Za nisko!";
    }
}

say "Gratulacje! Odgadłeś liczbę! Liczba prób: $attempts";

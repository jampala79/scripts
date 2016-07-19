#!/bin/perl
#use strict;
#use warnings;
use Data::Dumper;


# boolean isAnagram(word1, word2)
#
# isAnagram("listen", "silent") -> true
# isAnagram("listen", "apple") -> false

#for (my $count = 5; $count >= 1; $count--) {
  #print "Hello, World #$count\n";
#}

my $first = "listen";
my $second = "silent";
#Anagram ("listen", "silent");
Anagram ("$first", "$second");

sub Anagram {
  my ($first_word,$second_word) = @_;
  my $first_length = length($first_word);
  my $counter = 0;
  print "\n $first_word \n $second_word";
  my @strarray;
  
  
  
  @strarray = split //,$second_word;
  my $second_length = @strarray;
              if ($first_length != $second_length) {
               print "\n\n ANAGRAM False bcoz of Both the string lenghths not equal";
               exit;
               }
               
    foreach(@strarray) {
      print "\n$_";
      chomp($_);
      
      if ($first_word !~ /$_/) { 
        
        $counter = $counter + 1;
      }
     #print "\n $_";
    }  
     print " \n\n Counter = $counter";
     if ( $counter == 0 ) {
         print " \n\n Counter = $counter";
         print "\n Anagrm = True";
     }else {
     
          print " \n\n Counter = $counter";
          print "\n Anagrm = False";
      }    
         
    

} #END

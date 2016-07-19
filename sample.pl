#!/bin/perl

 my $filein = $ARGV[0];
 
 open(ReadFH,"<$filein") or die "Cann't open file Reading $!";
 open(WriteFH,">report.csv") or die "Can not open file writing $!";
 
 my @rarray;
 while (<ReadFH>)
	{
	  chomp($_);
	  print "$_\n";
	  push (@rarray,$_);
	  ($abbr,$state,$capital,$num) = split (",",$_);
	  #chomp($num);
	 #print "$num,$state";
	 print WriteFH "$num,$state\n";
	}
	$no_of_rows = @rarray;
	print "\n\n No of Rows  = $no_of_rows";
	print "\n",$rarray[5];
	 
		
 close (ReadFH);
 close (WriteFH);
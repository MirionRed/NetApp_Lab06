use strict;
use warnings;
use LWP::Simple;

my $url = "https://labs.jamesooi.com/images/";

my $file = 'image-list.txt';
open (my $fh, '<', $file) or die "Could not open $file: $!";

while(<$fh>){
  chomp;
  my $link = "$url" . "$_";
  my $filename = "$_";
  ##print $link;
  ##print $filename;
  my $rc = getstore($link, $filename);
  if(is_success($rc)){
    print "Success\n";
  }else{
    print "Error\n";
  }
}

use LWP::UserAgent;

$url = "https://labs.jamesooi.com/signup.php";

$name = "LA LA LA";
$nric = "1234567890";
$passport = "0987654321";
$email = "LA.com";
$phone = "123123123";
$gender = "M";

my $ua = LWP::UserAgent->new;
$ua->agent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36");

my $res = $ua->post(
  $url,
  [
    'name' => $name,
    'nric' => $nric,
    'passport' => $passport,
    'email' => $email,
    'phone' => $phone,
    'gender' => $gender,
  ],
);

if($res->is_success){
  print $res->content;
}else{
  print $res->status_line, "\n";
}

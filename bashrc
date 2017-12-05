# Variables
pbin=../bin/
ppayloads=../payload/

# Colors
default="\033[39m"
black="\033[30m"
red="\033[31m"
green="\033[32m"
yellow="\033[33m"
blue="\033[34m"



function pinapple-help {
    for f in $pbin*.sh; do
        bash $f --help
    done
}

function pmotd {
    
    echo -e "$green   .~~.   .~~. "
    echo -e "$green  '. \ ' ' / .' "
    echo -e "$red   .~ .~~~..~. "
    echo -e "$red  : .~.'~'.~. :                       ==============================================================$default"
    echo -e "$red ~ (   ) (   ) ~ $green   \||/    $default          $red=$default   Raspberry Pineapple WiFi                                 $red=$default"
    echo -e "$red( : '~'.~.'~' : ) $green  \||/    $default          $red=$default   By Stephen Levine and Austin Barrett                     $red=$default"
    echo -e "$red ~ .~ (   ) ~. ~ $yellow .<><><>.  $default          $red=$blue   https://github.com/Steves-Pineapple/pineapple-payloads   $red=$default"
    echo -e "$red  (  : '~' :  )  $yellow.<><><><>. $default          $red==============================================================$default"
    echo -e "$red   '~ .~~~. ~' $yellow  '<><><><>' $default                "
    echo -e "$red       '~' $yellow       '<><><>'  $default                    "

}









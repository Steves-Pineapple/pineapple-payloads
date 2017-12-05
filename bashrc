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
    
    echo "$green   .~~.   .~~. "
    echo "$green  '. \ ' ' / .' "
    echo "$red   .~ .~~~..~. "
    echo "$red  : .~.'~'.~. :                       ==============================================================$default"
    echo "$red ~ (   ) (   ) ~ $green   \||/    $default          $red=$default   Raspberry Pineapple WiFi                                 $red=$default"
    echo "$red( : '~'.~.'~' : ) $green  \||/    $default          $red=$default   By Stephen Levine and Austin Barrett                     $red=$default"
    echo "$red ~ .~ (   ) ~. ~ $yellow .<><><>.  $default          $red=$blue   https://github.com/Steves-Pineapple/pineapple-payloads   $red=$default"
    echo "$red  (  : '~' :  )  $yellow.<><><><>. $default          $red==============================================================$default"
    echo "$red   '~ .~~~. ~' $yellow  '<><><><>' $default                "
    echo "$red       '~' $yellow       '<><><>'  $default                    "

}










BEGIN {
    print "Hey!" 
}
{
    if ($8 !="")
        print $8 "\t" $2; 
}
END {
    print "DONE" 
}
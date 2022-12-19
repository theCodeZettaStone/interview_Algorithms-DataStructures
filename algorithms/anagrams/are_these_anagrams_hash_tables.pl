use strict;
use warnings;

sub main {
    print "Enter string number 1: ";
    my $string_input1 = <STDIN>;
    $string_input1 =~ s/\n//;
    print "Got it. Thanks!\n";
    print "Enter string number 2: ";
    my $string_input2 = <STDIN>;
    $string_input2 =~ s/\n//;
    print are_these_anagrams_hash_tables($string_input1, $string_input2);
}

sub are_these_anagrams_hash_tables {
    my ($s1, $s2) = @_;
    my %frequency_hash1 = ();
    my %frequency_hash2 = ();

    return "These are not anagrams" if length($s1) != length($s2);
    foreach my $chr (split //, $s1) {
        if (exists($frequency_hash1{$chr})) { $frequency_hash1{$chr} += 1} else { $frequency_hash1{$chr} = 1}
    }
    my @keys = keys(%frequency_hash1);
    my $size = @keys;
    my @print_frequency_array = ();
    my $counter = 0;
    foreach my $k (sort keys(%frequency_hash1)) {
        $counter += 1;
        if ($counter < $size) {
            push(@print_frequency_array, "$k: $frequency_hash1{$k},");
        } else {
            push(@print_frequency_array, "$k: $frequency_hash1{$k}");
        }
    };
    print "{@print_frequency_array}\n";
    foreach my $chr (split //, $s2) {
        if (exists($frequency_hash2{$chr})) { $frequency_hash2{$chr} += 1} else { $frequency_hash2{$chr} = 1}
    }
    @keys = keys(%frequency_hash2);
    $size = @keys;
    @print_frequency_array = ();
    $counter = 0;
    foreach my $k (sort keys(%frequency_hash2)) {
        $counter += 1;
        if($counter < $size) {
            push(@print_frequency_array, "$k: $frequency_hash2{$k},");
        } else {
            push(@print_frequency_array, "$k: $frequency_hash2{$k}");
        }
    };
    print "{@print_frequency_array}";
    foreach my $k (keys(%frequency_hash1)) {
        if (!exists($frequency_hash2{$k}) || $frequency_hash1{$k} != $frequency_hash2{$k}){
            return "\nThese are not anagrams";
        }
    };
    return "\nThese are anagrams";
}

main;

package Role::TinyCommons::TermAttr::Software;

# AUTHORITY
# DATE
# DIST
# VERSION

use Role::Tiny;

my $dt_cache;
sub termapp_software_info {
    my $self = shift;

    if (!$dt_cache) {
        require Term::Detect::Software;
        $dt_cache = Term::Detect::Software::detect_terminal_cached();
        #use Data::Dump; dd $dt_cache;
    }
    $dt_cache;
}

1;
# ABSTRACT: Find out information about terminal (emulator) software we run on

=head1 DESCRIPTION


=head1 PROVIDED METHODS

=head2 termattr_software_info

Try to find out information about terminal (emulator) software we run on. Uses
L<Term::Detect::Software>. Return a hash.


=head1 SEE ALSO

L<Role::TinyCommons>

L<Term::Detect::Software>

L<Term::App::Role::Attrs>, an earlier project, uses L<Moo::Role>.

use ExtUtils::MakeMaker;

my @TEST_TARGET = qw{ t/*.t t/*/*.t };

WriteMakefile(
    NAME => 'Amon2::Plugin::Model',
    VERSION_FROM => 'lib/Amon2/Plugin/Model.pm',
    ABSTRACT => 'Amon2::Plugin::Model',
    PREREQ_PM => {
        'ExtUtils::MakeMaker' => '6.31',
        'ExtUtils::Install'   => '1.46',
        'Try::Tiny'           => '0.11',
        'Class::Load'         => '0.20',
    },
    test => {
        TESTS => join( ' ', @TEST_TARGET ),
    },
    LICENSE => 'perl',
);

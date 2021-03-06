use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Redis',
    AUTHOR              => 'Dobrica Pavlinusic <dpavlin@rot13.org>',
    VERSION_FROM        => 'lib/Redis.pm',
    ABSTRACT_FROM       => 'lib/Redis.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0.92,
        'Test::Exception' => 0,
        'Test::Deep' => 0,
		'IO::Socket::INET' => 0,
		'Data::Dumper' => 0,
		'Carp' => 0,
		'Encode' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Redis-*' },
);

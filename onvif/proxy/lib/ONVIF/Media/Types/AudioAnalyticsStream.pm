package ONVIF::Media::Types::AudioAnalyticsStream;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %AudioDescriptor_of :ATTR(:get<AudioDescriptor>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        AudioDescriptor
        Extension

    ) ],
    {
        'AudioDescriptor' => \%AudioDescriptor_of,
        'Extension' => \%Extension_of,
    },
    {
        'AudioDescriptor' => 'ONVIF::Media::Types::AudioDescriptor',
        'Extension' => 'ONVIF::Media::Types::AudioAnalyticsStreamExtension',
    },
    {

        'AudioDescriptor' => 'AudioDescriptor',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::AudioAnalyticsStream

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AudioAnalyticsStream from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AudioDescriptor


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::AudioAnalyticsStream
   AudioDescriptor =>  { # ONVIF::Media::Types::AudioDescriptor
   },
   Extension =>  { # ONVIF::Media::Types::AudioAnalyticsStreamExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

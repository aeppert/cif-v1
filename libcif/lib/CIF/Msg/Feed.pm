package CIF::Msg::Feed;
##
## This file was generated by Google::ProtocolBuffers (0.08)
## on Thu Sep 12 12:50:52 2013
##      
use strict;
use warnings;
use Google::ProtocolBuffers;
{       
    unless (FeedType::RestrictionType->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_enum(
            'FeedType::RestrictionType',
            [
               ['restriction_type_default', 1],
               ['restriction_type_need_to_know', 2],
               ['restriction_type_private', 3],
               ['restriction_type_public', 4],

            ]
        );
    }
    
    unless (FeedType::MapType->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'FeedType::MapType',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_STRING(), 
                    'key', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_STRING(), 
                    'value', 2, undef
                ],

            ],
            { 'create_accessors' => 1, 'follow_best_practice' => 1,  }
        );
    }

    unless (FeedType->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'FeedType',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_STRING(), 
                    'version', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_STRING(), 
                    'guid', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_INT32(), 
                    'confidence', 3, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_STRING(), 
                    'description', 4, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_STRING(), 
                    'ReportTime', 5, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    'FeedType::RestrictionType', 
                    'restriction', 6, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'FeedType::MapType', 
                    'restriction_map', 7, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'FeedType::MapType', 
                    'group_map', 8, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'data', 9, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_STRING(), 
                    'uuid', 10, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_INT32(), 
                    'query_limit', 11, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'FeedType::MapType', 
                    'feeds_map', 12, undef
                ],

            ],
            { 'create_accessors' => 1, 'follow_best_practice' => 1,  }
        );
    }

}
1;

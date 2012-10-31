[
    {
        ':type' => 'Select',
        'results' => [
            {
                'value' => {
                    'value' => {
                        'value' => '1',
                        ':type' => 'Literal_Value',
                        'type' => 'INTEGER_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'int4',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '2',
                        ':type' => 'Literal_Value',
                        'type' => 'INTEGER_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'int8',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'x\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'text',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'y\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'limits' => [
                            '15'
                        ],
                        'name' => 'varchar',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'a.b\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'ltree',
                        ':type' => 'Type',
                        'schema' => 'contrib'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'c\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => '"MagicType"',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'2012-09-11 11:05:18.619231+02\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'timestamp without time zone',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'2012-09-11 11:05:18.619231+02\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'timestamp with time zone',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'2012-09-11 11:05:18.619231+02\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'time with time zone',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'2012-09-11 11:05:18.619231+02\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'limits' => [
                            '0'
                        ],
                        'name' => 'time with time zone',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'2012-09-11 11:05:18.619231+02\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'date',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'1 day 1.21 second\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'name' => 'interval day to hour',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'1 day 1.21 second\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'limits' => [
                            '0'
                        ],
                        'name' => 'interval day to hour',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'1 day 1.21 second\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'limits' => [
                            '0'
                        ],
                        'name' => 'interval minute to second',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'value' => {
                        'value' => '\'1 day 1.21 second\'',
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                    ':type' => 'Cast',
                    'method' => '::',
                    'final_type' => {
                        'limits' => [
                            undef,
                            '2'
                        ],
                        'name' => 'interval minute to second',
                        ':type' => 'Type'
                    }
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

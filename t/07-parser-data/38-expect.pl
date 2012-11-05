[
    {
        'sources' => [
            {
                'name' => 'a',
                ':type' => 'Table'
            }
        ],
        'cte' => {
            'a' => {
                ':type' => 'Select',
                'results' => [
                    {
                        'value' => {
                            'value' => '1',
                            ':type' => 'Literal_Value',
                            'type' => 'INTEGER_CONSTANT'
                        },
                        ':type' => 'Result_Column',
                        'alias' => 'i'
                    }
                ]
            }
        },
        ':type' => 'Select',
        'results' => [
            {
                'value' => {
                    'name' => 'i',
                    ':type' => 'Column'
                },
                ':type' => 'Result_Column'
            }
        ]
    },
    {
        'sources' => [
            {
                'left' => {
                    'name' => 'b',
                    ':type' => 'Table'
                },
                'right' => {
                    'name' => 'a',
                    ':type' => 'Table'
                },
                ':type' => 'Join',
                'type' => 'join',
                'condition_type' => 'on',
                'condition' => {
                    'operator' => '=',
                    'left' => {
                        'source' => [
                            'b'
                        ],
                        'name' => 'relkind',
                        ':type' => 'Column'
                    },
                    'right' => {
                        'source' => [
                            'a'
                        ],
                        'name' => 'i',
                        ':type' => 'Column'
                    },
                    ':type' => 'Operation'
                }
            }
        ],
        'cte' => {
            'a' => {
                ':type' => 'Select',
                'results' => [
                    {
                        'value' => {
                            'value' => {
                                'value' => '\'r\'',
                                ':type' => 'Literal_Value',
                                'type' => 'STRING_CONSTANT'
                            },
                            ':type' => 'Cast',
                            'method' => '::',
                            'final_type' => {
                                'name' => 'TEXT',
                                ':type' => 'Type'
                            }
                        },
                        ':type' => 'Result_Column',
                        'alias' => 'i'
                    }
                ]
            },
            'b' => {
                'sources' => [
                    {
                        'name' => 'pg_class',
                        ':type' => 'Table'
                    }
                ],
                ':type' => 'Select',
                'results' => [
                    {
                        'value' => {
                            'name' => 'relname',
                            ':type' => 'Column'
                        },
                        ':type' => 'Result_Column'
                    },
                    {
                        'value' => {
                            'name' => 'relkind',
                            ':type' => 'Column'
                        },
                        ':type' => 'Result_Column'
                    }
                ]
            }
        },
        ':type' => 'Select',
        'results' => [
            {
                'value' => {
                    'source' => [
                        'b'
                    ],
                    'name' => '*',
                    ':type' => 'Column'
                },
                ':type' => 'Result_Column'
            }
        ]
    },
    {
        'sources' => [
            {
                'name' => 'a',
                ':type' => 'Table'
            }
        ],
        'recursive_cte' => 1,
        'cte' => {
            'a' => {
                'operator' => 'UNION ALL',
                'first' => {
                    ':type' => 'Select',
                    'results' => [
                        {
                            'value' => {
                                'value' => '1',
                                ':type' => 'Literal_Value',
                                'type' => 'INTEGER_CONSTANT'
                            },
                            ':type' => 'Result_Column',
                            'alias' => 'i'
                        }
                    ]
                },
                'second' => {
                    'sources' => [
                        {
                            'name' => 'a',
                            ':type' => 'Table'
                        }
                    ],
                    ':type' => 'Select',
                    'results' => [
                        {
                            'value' => {
                                'operator' => '+',
                                'left' => {
                                    'name' => 'i',
                                    ':type' => 'Column'
                                },
                                'right' => {
                                    'value' => '1',
                                    ':type' => 'Literal_Value',
                                    'type' => 'INTEGER_CONSTANT'
                                },
                                ':type' => 'Operation'
                            },
                            ':type' => 'Result_Column'
                        }
                    ],
                    'where' => {
                        'operator' => '<',
                        'left' => {
                            'name' => 'i',
                            ':type' => 'Column'
                        },
                        'right' => {
                            'value' => '10',
                            ':type' => 'Literal_Value',
                            'type' => 'INTEGER_CONSTANT'
                        },
                        ':type' => 'Operation'
                    }
                },
                ':type' => 'Set_Operation'
            }
        },
        ':type' => 'Select',
        'results' => [
            {
                'value' => {
                    'name' => 'i',
                    ':type' => 'Column'
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

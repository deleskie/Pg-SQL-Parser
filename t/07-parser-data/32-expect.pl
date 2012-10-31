[
    {
        'sources' => [
            {
                'name' => 'generate_series',
                ':type' => 'Function',
                'arguments' => [
                    {
                        'value' => '1',
                        ':type' => 'Literal_Value',
                        'type' => 'INTEGER_CONSTANT'
                    },
                    {
                        'value' => '10',
                        ':type' => 'Literal_Value',
                        'type' => 'INTEGER_CONSTANT'
                    }
                ],
                'alias' => 'i'
            }
        ],
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
                'column_aliases' => [
                    'i'
                ],
                'name' => 'generate_series',
                ':type' => 'Function',
                'arguments' => [
                    {
                        'value' => '1',
                        ':type' => 'Literal_Value',
                        'type' => 'INTEGER_CONSTANT'
                    },
                    {
                        'value' => '10',
                        ':type' => 'Literal_Value',
                        'type' => 'INTEGER_CONSTANT'
                    }
                ],
                'alias' => 'q'
            }
        ],
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
                'column_aliases' => [ qw( a b c d ) ],
                'name' => 'aclexplode',
                ':type' => 'Function',
                'arguments' => [
                    {
                        'value' => "'{depesz=arwdDxt/depesz,pgdba=arwdDxt/depesz,postgres=arwdDxt/depesz,test=r/depesz}'",
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT'
                    },
                ],
                'alias' => 'x'
            }
        ],
        ':type' => 'Select',
        'results' => [
            {
                'value' => {
                    'name' => '*',
                    ':type' => 'Column'
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

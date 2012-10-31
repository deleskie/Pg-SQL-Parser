[
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => {
                    'name'      => 'now',
                    ':type'     => 'Function',
                    'arguments' => []
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'name'      => 'to_char',
                    ':type'     => 'Function',
                    'arguments' => [
                        {
                            'name'      => 'now',
                            ':type'     => 'Function',
                            'arguments' => []
                        },
                        {
                            'value' => '\'YYYY-MM-DD\'',
                            ':type' => 'Literal_Value',
                            'type'  => 'STRING_CONSTANT'
                        }
                    ]
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'name'      => 'lower',
                    ':type'     => 'Function',
                    'arguments' => [
                        {
                            'value' => '\'XxX\'',
                            ':type' => 'Literal_Value',
                            'type'  => 'STRING_CONSTANT'
                        }
                    ]
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'name'      => 'subpath',
                    ':type'     => 'Function',
                    'arguments' => [
                        {
                            'value' => '\'a.b.c\'',
                            ':type' => 'Literal_Value',
                            'type'  => 'STRING_CONSTANT'
                        },
                        {
                            'value' => '1',
                            ':type' => 'Literal_Value',
                            'type'  => 'INTEGER_CONSTANT'
                        }
                    ],
                    'schema' => 'ltree'
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'name'      => '"Badly Named"',
                    ':type'     => 'Function',
                    'arguments' => [
                        {
                            'value' => '\'whatever\'',
                            ':type' => 'Literal_Value',
                            'type'  => 'STRING_CONSTANT'
                        }
                    ],
                    'schema' => '"Some Schema"'
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

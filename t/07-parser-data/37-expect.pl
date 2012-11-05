[
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => {
                    ':type' => 'Operation',
                    'operator' => '=',
                    'left' => {
                        ':type' => 'Literal_Value',
                        'type' => 'INTEGER_CONSTANT',
                        'value' => '1',
                    },
                    'right' => {
                        'name'      => 'any',
                        ':type'     => 'Function',
                        'arguments' => [
                            { 'name' => 'indkey', ':type' => 'Column', }
                        ]
                    },
                },
                ':type' => 'Result_Column'
            }
        ],
        'sources' => [
            { ':type' => 'Table', 'name' => 'pg_index' },
        ],
    }
]

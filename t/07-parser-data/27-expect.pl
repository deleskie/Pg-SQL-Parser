[
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => { 'name' => 'u', ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
            {
                'value' => {
                    'name'      => 'count',
                    ':type'     => 'Function',
                    'arguments' => [ { 'name' => '*', ':type' => 'Column', } ]
                },
                ':type' => 'Result_Column',
            },
        ],
        'sources' => [
            { ':type' => 'Table', 'name' => 't', },
        ],
        'groups' => [
            { 'name' => 'u', ':type' => 'Column', },
        ],
        'having' => {
            'left'     => { 'name'      => 'count', ':type'     => 'Function', 'arguments' => [ { 'name' => '*', ':type' => 'Column', } ], },
            'operator' => '>',
            'right' => { 'value' => '10', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
            ':type' => 'Operation',
        },
        'sorts' => [
            { ':type' => 'Ordering', 'value' => { 'name' => 'count', ':type' => 'Column', }, 'direction' => 'DESC', },
        ],
    },
]

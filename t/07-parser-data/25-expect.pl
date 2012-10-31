[
    {
        ':type'   => 'Select',
        'results' => [
            {
                ':type' => 'Result_Column',
                'value' => {
                    'left'     => { 'name' => 'x', ':type' => 'Column', },
                    'operator' => '<',
                    'right' => { 'value' => '10', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
                    ':type' => 'Operation',
                },
            },
            {
                'value' => { 'name' => 'a', ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
            {
                'value' => {
                    'name'      => 'count',
                    ':type'     => 'Function',
                    'arguments' => [ { 'name' => '*', ':type' => 'Column', } ]
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'name'      => 'sum',
                    ':type'     => 'Function',
                    'arguments' => [ { 'name' => 'i', ':type' => 'Column', } ]
                },
                ':type' => 'Result_Column'
            },
        ],
        'sources' => [
            { ':type' => 'Table', 'name' => 'b', },
        ],
        'where' => {
            ':type'    => 'Operation',
            'left'     => { 'name' => 'c', ':type' => 'Column', },
            'operator' => '=',
            'right'    => { 'value' => '1', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
        },
        'groups' => [
            {
                'left'     => { 'name' => 'x', ':type' => 'Column', },
                'operator' => '<',
                'right' => { 'value' => '10', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
                ':type' => 'Operation',
            },
            { 'name' => 'a', ':type' => 'Column', },
        ],
    },
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => { 'name' => 'a', ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
            {
                'value' => {
                    'name'      => 'min',
                    ':type'     => 'Function',
                    'arguments' => [ { 'name' => 'b', ':type' => 'Column', } ]
                },
                ':type' => 'Result_Column'
            },
        ],
        'sources' => [
            { ':type' => 'Table', 'name' => 'c', },
        ],
        'groups' => [
            { 'value' => '1', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
        ],
    },
]

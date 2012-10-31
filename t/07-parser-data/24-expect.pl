[
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => { 'name' => 'a', ':type' => 'Column', },
                ':type' => 'Result_Column',
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
    },
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => { 'name' => 'username', ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
        ],
        'sources' => [
            { ':type' => 'Table', 'name' => 'users', },
        ],
        'where' => {
            ':type' => 'Operation',
            'left'  => {
                ':type'    => 'Operation',
                'left'     => { 'name' => 'username', ':type' => 'Column', },
                'operator' => '=',
                'right'    => { 'value' => "'depesz'", ':type' => 'Literal_Value', 'type' => 'STRING_CONSTANT' },
            },
            'operator' => 'and',
            'right'    => {
                ':type' => 'Operation',
                'left'  => {
                    ':type'    => 'Operation',
                    'left'     => { 'name' => 'valid_till', ':type' => 'Column', },
                    'operator' => '<',
                    'right'    => { ':type' => 'Function', 'name' => 'now', 'arguments' => [] },
                },
                'operator' => 'or',
                'right'    => {
                    ':type'    => 'Operation',
                    'left'     => { 'name' => 'valid_till', ':type' => 'Column', },
                    'operator' => 'is null',
                },
            },
        },
    },
]

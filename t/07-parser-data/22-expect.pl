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
            {
                ':type'          => 'Join',
                'left'           => { ':type' => 'Table', 'name' => 'b', },
                'right'          => { ':type' => 'Table', 'name' => 'c', },
                'type'           => 'join',
                'condition_type' => 'on',
                'condition'      => {
                    ':type'    => 'Operation',
                    'operator' => '=',
                    'left'     => { 'name' => 'd', ':type' => 'Column', },
                    'right'    => { 'name' => 'e', ':type' => 'Column', },
                },
            },
        ],
    },
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => { 'name' => 'a', ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
        ],
        'sources' => [
            {
                ':type'          => 'Join',
                'left'           => { ':type' => 'Table', 'name' => 'b', },
                'right'          => { ':type' => 'Table', 'name' => 'c', },
                'type'           => 'full outer join',
                'condition_type' => 'using',
                'condition'      => [
                    { 'name' => 'd', ':type' => 'Column', },
                    { 'name' => 'e', ':type' => 'Column', },
                ],
            },
        ],
    },
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => { 'name' => 'a', ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
        ],
        'sources' => [
            {
                ':type'          => 'Join',
                'left'           => { ':type' => 'Table', 'name' => 'b', },
                'right'          => { ':type' => 'Table', 'name' => 'c', },
                'type'           => 'natural left join',
            },
        ],
    },
]

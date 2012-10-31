[
    {
        ':type'   => 'Select',
        'results' => [ { 'value' => { 'name' => 'username', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
        'sources' => [ { ':type' => 'Table', 'name' => 'sessions', }, ],
        'distinct' => 1,
    },
    {
        ':type'   => 'Select',
        'results' => [ { 'value' => { 'name' => '*', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
        'sources' => [ { ':type' => 'Table', 'name' => 'sessions', }, ],
        'distinct' => [ { 'name' => 'name', ':type' => 'Column', }, ],
    },
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => {
                    'name'      => 'count',
                    ':type'     => 'Function',
                    'arguments' => [ { 'name' => 'name', ':type' => 'Column', } ],
                    'distinct'  => 1,
                },
                ':type' => 'Result_Column'
            },
        ],
        'sources' => [ { ':type' => 'Table', 'name' => 'sessions', }, ],
    },
]

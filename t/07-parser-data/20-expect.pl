[
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => { 'name' => 'a', ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
            {
                'value' => { 'name' => 'c', 'source' => [ qw( b ) ], ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
            {
                'value' => { 'name' => 'f', 'source' => [ qw( d e ) ], ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
            {
                'value' => { 'name' => 'z', 'source' => [ '" "' ], ':type' => 'Column', },
                ':type' => 'Result_Column',
            },
        ]
    }
]


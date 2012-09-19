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
                'left'           => {
                    ':type'          => 'Join',
                    'left'           => {
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
                    'right' => { ':type' => 'Table', 'name' => 'f', },
                    'type' => 'left join',
                    'condition_type' => 'using',
                    'condition' => [ { 'name' => 'g', ':type' => 'Column', }, ],
                },
                'right' => { ':type' => 'Table', 'name' => 'h', },
                'type'           => 'right join',
                'condition_type' => 'on',
                'condition'      => {
                    ':type'    => 'Operation',
                    'operator' => '=',
                    'left'     => { 'name' => 'i', ':type' => 'Column', },
                    'right'    => { 'name' => 'j', ':type' => 'Column', },
                },
            },
        ],
    },
]

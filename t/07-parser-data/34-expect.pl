[
    {
        ':type' => 'Set_Operation',
        'operator' => 'UNION',
        'first' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'a', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'b', }, ],
        },
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'c', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'd', }, ],
        },
    },
    {
        ':type' => 'Set_Operation',
        'operator' => 'EXCEPT',
        'first' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'a', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'b', }, ],
        },
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'c', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'd', }, ],
        },
    },
    {
        ':type' => 'Set_Operation',
        'operator' => 'INTERSECT',
        'first' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'a', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'b', }, ],
        },
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'c', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'd', }, ],
        },
    },
    {
        ':type' => 'Set_Operation',
        'operator' => 'UNION ALL',
        'first' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'a', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'b', }, ],
        },
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'c', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'd', }, ],
        },
    },
    {
        ':type' => 'Set_Operation',
        'operator' => 'EXCEPT ALL',
        'first' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'a', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'b', }, ],
        },
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'c', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'd', }, ],
        },
    },
    {
        ':type' => 'Set_Operation',
        'operator' => 'INTERSECT ALL',
        'first' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'a', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'b', }, ],
        },
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'c', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'd', }, ],
        },
    },
]

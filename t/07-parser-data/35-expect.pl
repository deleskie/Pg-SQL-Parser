[
    {
        ':type' => 'Set_Operation',
        'operator' => 'UNION',
        'first' => {
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
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'e', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'f', }, ],
        },
        'sorts' => [
            { ':type' => 'Ordering', 'value' => { 'name' => 'a', ':type' => 'Column', } },
        ],
        'limit' => { 'value' => '2', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
        'offset' => { 'value' => '3', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
    },
    {
        ':type' => 'Set_Operation',
        'operator' => 'UNION ALL',
        'first' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'relname', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'pg_class', }, ],
            'sorts' => [ { ':type' => 'Ordering', 'value' => { 'name' => 'relname', ':type' => 'Column', }, }, ],
            'limit' => { 'value' => '2', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
        },
        'second' => {
            ':type'   => 'Select',
            'results' => [ { 'value' => { 'name' => 'datname', ':type' => 'Column', }, ':type' => 'Result_Column', }, ],
            'sources' => [ { ':type' => 'Table', 'name' => 'pg_database', }, ],
            'sorts' => [ { ':type' => 'Ordering', 'value' => { 'name' => 'datname', ':type' => 'Column', }, }, ],
            'limit' => { 'value' => '2', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' },
        },
        'sorts' => [
            { ':type' => 'Ordering', 'value' => { 'value' => '1', ':type' => 'Literal_Value', 'type' => 'INTEGER_CONSTANT' }, },
        ],
    },
]

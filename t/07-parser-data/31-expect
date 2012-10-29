[
    {
        'sources' => [ { 'name' => 'c', ':type' => 'Table' } ],
        ':type' => 'Select',
        'results' => [
            { 'value' => { 'name' => 'a', ':type' => 'Column' }, ':type' => 'Result_Column' },
            {
                'value' => {
                    'window' => { ':type' => 'Window' },
                    'name' => 'avg',
                    ':type' => 'Function',
                    'arguments' => [ { 'name' => 'b', ':type' => 'Column' } ]
                },
                ':type' => 'Result_Column'
            }
        ]
    },
    {
        'sources' => [ { 'name' => 'e', ':type' => 'Table' } ],
        ':type' => 'Select',
        'results' => [
            { 'value' => { 'name' => 'a', ':type' => 'Column' }, ':type' => 'Result_Column' },
            {
                'value' => {
                    'window' => {
                        'partitioning' => [
                            { 'name' => 'c', ':type' => 'Column' },
                            { 'name' => 'd', ':type' => 'Column' }
                        ],
                        ':type' => 'Window'
                    },
                    'name' => 'avg',
                    ':type' => 'Function',
                    'arguments' => [ { 'name' => 'b', ':type' => 'Column' } ]
                },
                ':type' => 'Result_Column'
            }
        ]
    },
    {
        'sources' => [ { 'name' => 'e', ':type' => 'Table' } ],
        ':type' => 'Select',
        'results' => [
            { 'value' => { 'name' => 'a', ':type' => 'Column' }, ':type' => 'Result_Column' },
            {
                'value' => {
                    'window' => {
                        ':type' => 'Window',
                        'sorts' => [
                            { 'value' => { 'name' => 'c', ':type' => 'Column' }, ':type' => 'Ordering' },
                            { 'value' => { 'name' => 'd', ':type' => 'Column' }, ':type' => 'Ordering' }
                        ]
                    },
                    'name' => 'avg',
                    ':type' => 'Function',
                    'arguments' => [ { 'name' => 'b', ':type' => 'Column' } ]
                },
                ':type' => 'Result_Column'
            }
        ]
    },
    {
        'sources' => [ { 'name' => 'g', ':type' => 'Table' } ],
        ':type' => 'Select',
        'results' => [
            { 'value' => { 'name' => 'a', ':type' => 'Column' }, ':type' => 'Result_Column' },
            {
                'value' => {
                    'window' => {
                        'partitioning' => [
                            { 'name' => 'c', ':type' => 'Column' },
                            { 'name' => 'd', ':type' => 'Column' }
                        ],
                        ':type' => 'Window',
                        'sorts' => [
                            { 'value' => { 'name' => 'e', ':type' => 'Column' }, ':type' => 'Ordering' },
                            { 'value' => { 'name' => 'f', ':type' => 'Column' }, ':type' => 'Ordering' }
                        ]
                    },
                    'name' => 'avg',
                    ':type' => 'Function',
                    'arguments' => [ { 'name' => 'b', ':type' => 'Column' } ]
                },
                ':type' => 'Result_Column'
            }
        ]
    },
    {
        'sources' => [ { 'name' => 'f', ':type' => 'Table' } ],
        'windows' => {
            'e' => {
                ':type' => 'Window',
                'sorts' => [ { 'value' => { 'name' => 'k', ':type' => 'Column' }, ':type' => 'Ordering' } ]
            },
            'c' => {
                'partitioning' => [
                    { 'name' => 'g', ':type' => 'Column' },
                    { 'name' => 'h', ':type' => 'Column' }
                ],
                ':type' => 'Window',
                'sorts' => [
                    { 'value' => { 'name' => 'i', ':type' => 'Column' }, ':type' => 'Ordering' },
                    { 'value' => { 'name' => 'j', ':type' => 'Column' }, ':type' => 'Ordering' }
                ],
            },
        },
        ':type' => 'Select',
        'results' => [
            { 'value' => { 'name' => 'a', ':type' => 'Column' }, ':type' => 'Result_Column' },
            {
                'value' => {
                    'window' => 'c',
                    'name' => 'avg',
                    ':type' => 'Function',
                    'arguments' => [ { 'name' => 'b', ':type' => 'Column' } ]
                },
                ':type' => 'Result_Column'
            },
            {
                'value' => {
                    'window' => 'e',
                    'name' => 'sum',
                    ':type' => 'Function',
                    'arguments' => [ { 'name' => 'd', ':type' => 'Column' } ]
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

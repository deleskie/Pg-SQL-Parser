[
    {
        ':type'   => 'Select',
        'results' => [
            {
                'value' => {
                    'operator' => 'between',
                    'left'     => {
                        'value' => '2',
                        ':type' => 'Literal_Value',
                        'type'  => 'INTEGER_CONSTANT'
                    },
                    'right' => [
                        {
                            'value' => '1',
                            ':type' => 'Literal_Value',
                            'type'  => 'INTEGER_CONSTANT'
                        },
                        {
                            'value' => '3',
                            ':type' => 'Literal_Value',
                            'type'  => 'INTEGER_CONSTANT'
                        },
                    ],
                    ':type' => 'Operation'
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

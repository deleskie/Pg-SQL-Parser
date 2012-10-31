[
    {
        ':type' => 'Select',
        'results' => [
            {
                'value' => {
                    'operator' => 'between',
                    'left' => {
                        'operator' => '+',
                        'left' => {
                            'value' => '4',
                            ':type' => 'Literal_Value',
                            'type' => 'INTEGER_CONSTANT'
                        },
                        'right' => {
                            'value' => '5',
                            ':type' => 'Literal_Value',
                            'type' => 'INTEGER_CONSTANT'
                        },
                        ':type' => 'Operation'
                    },
                    'right' => [
                        {
                            'value' => '6',
                            ':type' => 'Literal_Value',
                            'type' => 'INTEGER_CONSTANT'
                        },
                        {
                            'value' => '10',
                            ':type' => 'Literal_Value',
                            'type' => 'INTEGER_CONSTANT'
                        }
                    ],
                    ':type' => 'Operation'
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

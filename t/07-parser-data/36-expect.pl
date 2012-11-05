[
    {
        ':type' => 'Select',
        'results' => [
            {
                'value' => {
                    ':type' => 'Case',
                    'when_then' => [
                        [
                            {
                                ':type' => 'Operation',
                                'operator' => '=',
                                'left' => {
                                    'value' => '1',
                                    ':type' => 'Literal_Value',
                                    'type' => 'INTEGER_CONSTANT'
                                },
                                'right' => {
                                    'value' => '1',
                                    ':type' => 'Literal_Value',
                                    'type' => 'INTEGER_CONSTANT'
                                },
                            }
                            ,
                            {
                                ':type' => 'Literal_Value',
                                'type' => 'STRING_CONSTANT',
                                'value' => q{'haha'},
                            }
                        ],
                        [
                            {
                                ':type' => 'Operation',
                                'operator' => '=',
                                'left' => {
                                    'value' => '0',
                                    ':type' => 'Literal_Value',
                                    'type' => 'INTEGER_CONSTANT'
                                },
                                'right' => {
                                    'value' => '1',
                                    ':type' => 'Literal_Value',
                                    'type' => 'INTEGER_CONSTANT'
                                },
                            }
                            ,
                            {
                                ':type' => 'Literal_Value',
                                'type' => 'STRING_CONSTANT',
                                'value' => q{'oops'},
                            }
                        ]
                    ],
                    'else' => {
                        ':type' => 'Literal_Value',
                        'type' => 'STRING_CONSTANT',
                        'value' => q{'hmm'},
                    },
                },
                ':type' => 'Result_Column'
            }
        ]
    }
]

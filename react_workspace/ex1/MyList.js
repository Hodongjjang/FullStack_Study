function MyList(props) {

    return React.createElement(
        'ul',
        {
            style: {
                border: 'solid 1px black'
            }
        },
        [
            React.createElement(
                'li',
                null,
                '리스트 아이템1'
            ),
            React.createElement(
                'li',
                null,
                '리스트 아이템2'
            ),
            React.createElement(
                'li',
                null,
                '리스트 아이템3'
            ),

            ]
    )
}
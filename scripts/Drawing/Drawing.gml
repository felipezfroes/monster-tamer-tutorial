function hp_get_color(_percent)
{
    _percent =
        clamp(
            _percent,
            0,
            1
        );


    if (_percent > 0.5)
    {
        var _t =
            (_percent - 0.5) / 0.5;


        return merge_colour(
            make_colour_rgb(
                255,
                220,
                0
            ),

            c_green,

            _t
        );
    }

    else if (_percent > 0.2)
    {
        var _t =
            (_percent - 0.2) / 0.3;


        return merge_colour(
            c_red,

            make_colour_rgb(
                255,
                220,
                0
            ),

            _t
        );
    }

    else
    {
        return c_red;
    }
}
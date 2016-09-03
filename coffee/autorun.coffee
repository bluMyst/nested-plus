#= require <nestedscript>

getParameterByName = (name, url=window.location.href) ->
    name = name.replace /[\[\]]/g, "\\$&"
    regex = ///
        [?&] #{name}
        (
            = ( [^&#]* )
            | &
            | \#
            | $
        )
    ///

    results = regex.exec url

    if not results
        return null
    else if not results[2]
        return ''
    else
        results = results[2].replace(/\+/g, ' ')
        return decodeURIComponent results

# This can be set to anything, like "firefighter" or "donut box".
seedObject = getParameterByName('seed') ? "universe"
seedObject = seedObject.toLowerCase()
launchNest seedObject

# quick and dirty dynamic stylesheets (doesn't seem to work in IE, unfortunately)
$('body').append "<style id='customstyle'></style>"

setStyle = (styleID) ->
    $('#customstyle').html styles[styleID].style

styles = []
class Style
    constructor: (@color, @style) ->

styles.push new Style "#fff", "
    body   { background:   #fff; }
    .thing { border-color: #fff; }
"

styles.push new Style"#8cf", "
    body { background: #8cf; }

    .thing {
        border-color: #8cf;
        background:   #bef;
    }
"

styles.push new Style "#474", "
    body   { background: #474; }
    .arrow { background: #141; }
    .thing { background: #ada; }

    .thing a:hover, .thing a:active {
        background:  #141;
        color:       #fff;
    }
"

styles.push new Style "#953", "
    body   { background: #953; }
    .arrow { background: #620; }

    .thing {
        border-color:  #620;
        background:    #c96;
    }

    .thing a:hover, .thing a:active {
        background:  #620;
        color:       #fff;
    }
"

styles.push new Style "#a97", "
    body { background: #a97; }

    .thing {
        border-color:  #a97;
        background:    #cb9;
        box-shadow:    0px 2px 2px #321;
        font-family:   Georgia, serif;
        font-size:     10pt;
    }

    .thing,
    .thing a,
    .thing a:hover,
    .thing a:active {
        color: #321;
    }

    .thing a:hover,
    .thing a:active {
        color:        #852;
        background:   transparent;
        text-shadow:  0px 0px 2px #fff;
    }

    .arrow {
        background:  transparent;
        color:       #321;
    }
"

styles.push new Style "#ccc", "
    .thing {
        border-radius:       10px;
        -moz-border-radius:  10px;
        padding:              5px;

        border-top:    #fff solid 2px;
        border-left:   #ddd solid 2px;
        border-right:  #ddd solid 2px;
        border-bottom: #bbb solid 2px;

        -moz-box-shadow:  0px 2px 3px #000;
        padding-right:    1px;
    }

    .arrow {
        border-radius:       10px;
        -moz-border-radius:  10px;
        padding-left:         4px;
        padding-right:        4px;
    }

    .thing a {
        border-radius:       10px;
        -moz-border-radius:  10px;
    }
"

styles.push new Style "#000", "
    body     { background: #000; }
    .thing a { color:      #fff; }

    .thing a:active {
        background:  #fff;
        color:       #000;
    }

    .thing {
        border-color:  #000;
        background:    #222;
        color:         #fff;
    }
"

styles.push new Style "#214", "
    body {
        background: url(images/UniverseBG.jpg);
    }

    .thing {
        border-color:  #fff;
        border-width:  1px;
        background:    transparent;
        color:         #fff;
        box-shadow:    0px 0px 8px #428,0px 0px 4px #fff inset;
    }

    .thing a {
        color:       #fff;
        background:  rgba(0,0,0,0.5);
    }

    .thing a:hover, .thing a:hover .arrow {
        background:  #fff;
        color:       #000;
    }
"

str = ""
for i, style of styles
    # TODO: How can I indent this to make it readable?
    str += "
        <a
            href='javascript:setStyle(#{i});'
            style='background-color:#{style.color};'
        >
            -
        </a>
    "

$('#styles').html str

# Should have been handled at the CSS file level now.
###
for styleID, style of styles
    if style.color == '#000'
        setStyle styleID
###

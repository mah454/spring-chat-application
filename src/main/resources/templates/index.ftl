<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <head>
        <script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
        <script src="/webjars/sockjs-client/1.0.2/sockjs.min.js"></script>
        <script src="/webjars/stomp-websocket/2.3.3/stomp.min.js"></script>
    </head>
</head>
<body>
<p>
    Click the button below to perform an action.
    <br />
    <strong>Sina</strong> will be notified via web socket.
</p>
<input id="do-some-action" type="button" value="Click me" />

<!-- Javascript functions -->
<script>
    /**
     * Send an action to the server.
     */
    function sendAction(event) {
        event.preventDefault();
        $.ajax({
            url: "/some-action",
            type: "POST"
        });
        return;
    } // function sendAction

    /**
     * Init operations.
     */
    $(document).ready(function() {

        // Bind the on-click event for the button element.
        $("#do-some-action").on("click", sendAction);

    });
</script>

<br />
<hr />
Proudly handcrafted by
<a href='http://netgloo.com/en'>Netgloo</a>

</body>
</html>
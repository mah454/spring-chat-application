<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
        <script src="/webjars/sockjs-client/1.0.2/sockjs.min.js"></script>
        <script src="/webjars/stomp-websocket/2.3.3/stomp.min.js"></script>
    </head>
</head>
<body>
<p>
    Notifications received on the web socket channel will be displayed below:
</p>
<textarea id="notifications-area" cols="60" rows="10" readonly="readonly"></textarea>

<!-- Javascript functions -->
<script>
    /**
     * Open the web socket connection and subscribe the "/notify" channel.
     */

    function connect() {
        // Create and init the SockJS object
        var socket = new SockJS('/ws');
        var stompClient = Stomp.over(socket);
        // Subscribe the '/notify' channell
        stompClient.debug = null;
        stompClient.connect({}, function (frame) {
            stompClient.subscribe('/user/queue/notify', function (notification) {
                notify(JSON.parse(notification.body).message);
            });
        });
    } // function connect

    /**
     * Display the notification message.
     */
    function notify(message) {
        $("#notifications-area").append(message + "\n");
    }

    /**
     * Init operations.
     */
    $(document).ready(function () {

        // Start the web socket connection.
        connect();

    });
</script>

<br/>
<hr/>
Proudly handcrafted by
<a href='http://netgloo.com/en'>Netgloo</a>
</body>
</html>
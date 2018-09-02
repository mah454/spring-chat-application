package ir.moke.spring.websocket.model;

public class Notification {
    private String message ;

    public Notification(String message) {
        this.message = message;
    }

    public Notification() {
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}

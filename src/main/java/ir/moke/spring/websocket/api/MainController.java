package ir.moke.spring.websocket.api;

import ir.moke.spring.websocket.model.Notification;
import ir.moke.spring.websocket.services.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
    @Autowired
    private NotificationService notificationService;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/notify")
    public String notifications() {
        return "notifications";
    }

    @RequestMapping(value = "/some-action", method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public ResponseEntity<?> someAction() {
        notificationService.notify(new Notification("hello"),"sina");
        return new ResponseEntity<>(HttpStatus.OK);
    }
}

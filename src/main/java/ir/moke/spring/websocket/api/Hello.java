package ir.moke.spring.websocket.api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.security.RolesAllowed;

@RestController
public class Hello {

    @GetMapping("/hello")
    @RolesAllowed("admin")
    public ResponseEntity<?> sayHello() {
        return ResponseEntity.ok("Hello dear !");
    }
}

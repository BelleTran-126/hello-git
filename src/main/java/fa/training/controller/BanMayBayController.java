package fa.training.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author: Sang
 * @date: 19/01/2024
 */

@Controller
@RequestMapping("/ban-may-bay")
public class BanMayBayController {
    @GetMapping
    public String banMayBay() {
        return "banmaybay";
    }
}

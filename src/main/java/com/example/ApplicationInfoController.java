package com.example;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Zoltan Altfatter
 */
@RestController
@Slf4j
public class ApplicationInfoController {

    private final ApplicationInfoBean infoBean;

    @Autowired
    public ApplicationInfoController(ApplicationInfoBean infoBean) {
        this.infoBean = infoBean;
    }

    @GetMapping
    public ApplicationInfoBean info() {
        log.info("handling info request on instance with ip {}", infoBean.getPrivateIp());
        return infoBean;
    }
}

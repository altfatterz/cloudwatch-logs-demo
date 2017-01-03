package com.example;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * @author Zoltan Altfatter
 */
@Component
@Getter
public class ApplicationInfoBean {

    @Value("${instance-id:N/A}")
    private String instanceId;

    @Value("${instance-type:N/A}")
    private String instanceType;

    @Value("${public-ipv4:N/A}")
    private String publicIp;

    @Value("${local-ipv4:N/A}")
    private String privateIp;

    @Value("${placement/availability-zone:N/A}")
    private String availabilityZone;

}
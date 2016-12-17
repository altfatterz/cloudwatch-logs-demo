package com.example;

import org.springframework.cloud.aws.context.config.annotation.EnableContextInstanceData;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

/**
 * @author Zoltan Altfatter
 */
@Profile("ec2")
@Configuration
@EnableContextInstanceData
public class EC2Configuration {
}

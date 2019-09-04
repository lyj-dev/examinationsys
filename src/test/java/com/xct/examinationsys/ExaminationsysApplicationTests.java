package com.xct.examinationsys;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ExaminationsysApplicationTests {

    @Test
    public void contextLoads() {
    }

    @Test
    public void arrayTest() {
        String[] strings1 = {"asdg"};
        System.out.println(Arrays.toString(strings1));

    }

}

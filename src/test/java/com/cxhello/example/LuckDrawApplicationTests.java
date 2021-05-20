package com.cxhello.example;

import com.cxhello.example.entity.LuckDrawDetail;
import com.cxhello.example.service.LuckDrawDetailService;
import com.cxhello.example.util.LuckDrawUtil;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@MapperScan("com.cxhello.example.mapper")
class LuckDrawApplicationTests {

    @Autowired
    private LuckDrawDetailService luckDrawDetailService;

    @Autowired
    private LuckDrawUtil luckDrawUtil;

    @Test
    void contextLoads() {
        List<LuckDrawDetail> luckDrawDetailList = luckDrawDetailService.list();
        luckDrawUtil.luckDraw(luckDrawDetailList);
    }

}

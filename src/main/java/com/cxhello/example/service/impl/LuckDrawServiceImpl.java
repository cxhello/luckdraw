package com.cxhello.example.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxhello.example.entity.LuckDraw;
import com.cxhello.example.mapper.LuckDrawMapper;
import com.cxhello.example.service.LuckDrawService;
import org.springframework.stereotype.Service;

/**
 * @author cxhello
 * @date 2021/5/19
 */
@Service
public class LuckDrawServiceImpl extends ServiceImpl<LuckDrawMapper, LuckDraw> implements LuckDrawService {

}

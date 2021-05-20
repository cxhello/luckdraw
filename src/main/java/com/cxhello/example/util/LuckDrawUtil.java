package com.cxhello.example.util;

import com.cxhello.example.entity.LuckDrawDetail;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @author caixiaohui
 * @date 2021/5/19
 */
@Component
public class LuckDrawUtil {

    public LuckDrawDetail luckDraw(List<LuckDrawDetail> luckDrawDetailList) {
        BigDecimal sum = luckDrawDetailList.stream().map(LuckDrawDetail::getPrizeProbability).reduce(BigDecimal.ZERO, BigDecimal::add);
        BigDecimal temp = BigDecimal.ZERO;
        List<BigDecimal> tempList = new ArrayList<>(luckDrawDetailList.size());
        for (LuckDrawDetail luckDrawDetail : luckDrawDetailList) {
            temp = temp.add(luckDrawDetail.getPrizeProbability());
            tempList.add(temp.divide(sum));
        }
        BigDecimal value = BigDecimal.valueOf(Math.random());
        tempList.add(value);
        Collections.sort(tempList);
        int index = tempList.indexOf(value);
        LuckDrawDetail luckDrawDetail = luckDrawDetailList.get(index);
        return luckDrawDetail;
    }

}

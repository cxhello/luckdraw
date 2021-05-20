package com.cxhello.example.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @author cxhello
 * @date 2021/5/19
 */
@Data
public class LuckDrawDetail extends BaseEntity {

    /**
     * 自增主键
     */
    private Long id;

    /**
     * 奖品表ID
     */
    private Long luckDrawId;

    /**
     * 奖品名称
     */
    private String prizeName;

    /**
     * 奖品数量
     */
    private String prizeCount;

    /**
     * 奖品概率
     */
    private BigDecimal prizeProbability;

}

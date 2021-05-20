package com.cxhello.example.entity;

import lombok.Data;

/**
 * @author cxhello
 * @date 2021/5/19
 */
@Data
public class LuckDraw extends BaseEntity {

    /**
     * 自增主键
     */
    private Long id;

    /**
     * 抽奖周期 1-年，2-月，3-日
     */
    private Integer cycle;

    /**
     * 抽奖次数
     */
    private Integer count;

    /**
     * 状态码 1-启用，2-停用
     */
    private Integer state;


}

package com.jfaker.app.modules.web;

import com.jfaker.framework.flow.web.SnakerController;
import com.jfaker.framework.security.shiro.ShiroUtils;
import org.apache.commons.lang.StringUtils;

/**
 * Created by Xuemeng Wang on 16-1-12.
 * Push不过测试，申请流程
 */
public class PushNoTestController extends SnakerController {
    /**
     * push不过测试，申请
     */
    public void apply() {
        keepPara();
        setAttr("operator", ShiroUtils.getUsername());
        String orderId = getPara(PARA_ORDERID);
        String taskId = getPara(PARA_TASKID);

        if(StringUtils.isEmpty(orderId) || StringUtils.isNotEmpty(taskId)) {
            render("apply.jsp");
        } else {
            flowData(orderId, getPara(PARA_TASKNAME));
            render("applyView.jsp");
        }
    }

    /**
     * push不过测试，审批人审批
     */
    public void approve() {
        keepPara();
        String orderId = getPara(PARA_ORDERID);
        String taskId = getPara(PARA_TASKID);
        if(StringUtils.isNotEmpty(taskId)) {
            render("approveBoss.jsp");
        } else {
            flowData(orderId, getPara(PARA_TASKNAME));
            render("approveBossView.jsp");
        }
    }

    /**
     * push不过测试，审批人审批
     */
    public void approveDiff() {
        keepPara();
        String orderId = getPara(PARA_ORDERID);
        String taskId = getPara(PARA_TASKID);
        if(StringUtils.isNotEmpty(taskId)) {
            render("approveDiff.jsp");
        } else {
            flowData(orderId, getPara(PARA_TASKNAME));
            render("approveDiffView.jsp");
        }
    }
}

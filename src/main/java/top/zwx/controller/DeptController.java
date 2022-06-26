package top.zwx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.zwx.bean.Dept;
import top.zwx.bean.Message;
import top.zwx.service.DeptService;

import java.util.List;

/**
 * @program: ssm_crud
 * @description:
 * @author: zwx
 * @create: 2022-05-20 12:10
 **/
@Controller
public class DeptController {
    @Autowired
    private DeptService deptService;

    @GetMapping("/depts")
    @ResponseBody
    public Message getDepts(){
        List<Dept> depts = deptService.getDepts();

        return Message.success().add("depts",depts);
    }
}

package top.zwx.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import top.zwx.bean.Employee;
import top.zwx.bean.Message;
import top.zwx.service.EmployeeService;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: ssm_crud
 * @description:
 * @author: zwx
 * @create: 2022-05-18 20:06
 **/
@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @Autowired
    DeptController deptController;

    @DeleteMapping("/emp/{ids}")
    @ResponseBody
    public Message deleteEmpById(@PathVariable("ids") String ids){
        System.out.println(ids);
        if(ids.contains("-")){
            String[] split = ids.split("-");
            List<Integer> idsArray = new ArrayList<>();
            for (int i = 0; i < split.length; i++) {
                idsArray.add(Integer.valueOf(split[i]));
            }
            int i = employeeService.deleteEmps(idsArray);
            return Message.success().add("删除条数",i);
        }else {
            int result = employeeService.deleteEmpById(Integer.valueOf(ids));
            return Message.success().add("删除条数",result);
        }

    }

    @PutMapping(value = "/emp")
    @ResponseBody
    public Message updateEmp(@RequestBody Employee employee){
        System.out.println(employee);
        int i = employeeService.updateEmp(employee);
        System.out.println(i);
        return Message.success().add("更新条数",i);
    }

    @GetMapping(value = "/emp/{id}")
    @ResponseBody
    public Message getEmpWithDept(@PathVariable("id") Integer id){
        Message depts = deptController.getDepts();
        Employee employee = employeeService.getEmpWithDept(id);
        return Message.success().add("depts",depts).add("emp",employee);
    }


    @RequestMapping("/checkEmpName")
    @ResponseBody
    public Message checkEmpName(@RequestParam("empName") String empName){
        //判断用户名是否合法
        String regx="(^[a-zA-Z0-9_-]{6,16}$)|(^[\\u2E80-\\u9FFF]{2,5})";
        if(!empName.matches(regx)){
            return Message.failed().add("va_msg","后端：用户名可以2-5位中文或6-16英文和数字组合");
        }

        boolean result = employeeService.checkEmpName(empName);
        return result ? Message.success():Message.failed().add("va_msg","后端：用户名不可用");
    }

    @PostMapping("/emp")
    @ResponseBody
    public Message saveEmp(@RequestBody Employee employee){
        System.out.println(employee);
        employeeService.saveEmp(employee);
        return Message.success();
    }

    @RequestMapping("/emps")
    @ResponseBody
    public Message getEmpWithJson(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum){
        //查询之前传入页码和每页大小
        PageHelper.startPage(pageNum,6);
        //分页查询
        List<Employee> emps = employeeService.getAll();
        //使用pageInfo包装查询后的结果
        PageInfo pageInfo = new PageInfo(emps,5);
        return Message.success().add("pageInfo",pageInfo);
    }

    /**
    @RequestMapping("/emps")
    public String getEmps(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum, Model model){
        //查询之前传入页码和每页大小
        PageHelper.startPage(pageNum,5);
        //分页查询
        List<Employee> emps = employeeService.getAll();
        //使用pageInfo包装查询后的结果
        PageInfo pageInfo = new PageInfo(emps,5);
        model.addAttribute("pageInfo",pageInfo);

        return "list";
    }*/

}

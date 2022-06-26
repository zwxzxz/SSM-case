package top.zwx.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zwx.bean.Employee;
import top.zwx.bean.EmployeeExample;
import top.zwx.dao.EmployeeMapper;

import java.util.List;

/**
 * @program: ssm_crud
 * @description:
 * @author: zwx
 * @create: 2022-05-18 20:11
 **/
@Service
public class EmployeeService {
    @Autowired
    EmployeeMapper employeeMapper;

    public List<Employee> getAll() {
        return employeeMapper.selectByExampleWithDept(null);
    }

    public void saveEmp(Employee employee) {
        employeeMapper.insertSelective(employee);
    }

    public boolean checkEmpName(String empName) {
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEmpNameEqualTo(empName);
        long count = employeeMapper.countByExample(example);
        return count == 0;
    }

    public Employee getEmpWithDept(Integer id) {
        return employeeMapper.selectByPrimaryKeyWithDept(id);
    }

    public int updateEmp(Employee employee) {
        return employeeMapper.updateByPrimaryKeySelective(employee);
    }

    public int deleteEmpById(Integer id) {
        return employeeMapper.deleteByPrimaryKey(id);
    }

    public int deleteEmps(List<Integer> ids) {
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEmpIdIn(ids);
        int i = employeeMapper.deleteByExample(example);
        return i;
    }
}

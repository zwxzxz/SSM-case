package top.zwx.dao;

import org.apache.ibatis.annotations.Param;
import top.zwx.bean.Employee;
import top.zwx.bean.EmployeeExample;

import java.util.List;

/**
 * @author 25748
 */
public interface EmployeeMapper {
    /**
     * 有条件计数
     * @param example 条件
     * @return long
     */
    long countByExample(EmployeeExample example);

    /**
     * 有条件删除员工
     * @param example 条件
     * @return int
     */
    int deleteByExample(EmployeeExample example);

    /**
     * 主键删除员工
     * @param empId emp_id
     * @return int
     */
    int deleteByPrimaryKey(Integer empId);

    /**
     * 更新员工(无选择性)
     * @param row 员工
     * @return int
     */
    int insert(Employee row);

    /**
     * 更新员工(有选择性)
     * @param row 员工
     * @return int
     */
    int insertSelective(Employee row);

    /**
     * 有条件查询
     * @param example 条件
     * @return List<Employee>
     */
    List<Employee> selectByExample(EmployeeExample example);

    /**
     * 主键查询
     * @param empId emp_id
     * @return Employee
     */
    Employee selectByPrimaryKey(Integer empId);

    /**
     * 有选择性，有条件更新员工
     * @param row 员工
     * @param example 条件
     * @return int
     */
    int updateByExampleSelective(@Param("row") Employee row, @Param("example") EmployeeExample example);

    /**
     * 无选择性，有条件更新员工
     * @param row 员工
     * @param example 条件
     * @return int
     */
    int updateByExample(@Param("row") Employee row, @Param("example") EmployeeExample example);

    /**
     * 有选择性，通过主键更新员工
     * @param row 员工
     * @return int
     */
    int updateByPrimaryKeySelective(Employee row);

    /**
     * 无选择性，通过主键更新员工
     * @param row 员工
     * @return int
     */
    int updateByPrimaryKey(Employee row);

    /**
     * 有条件查询，带部门信息
     * @param example 条件
     * @return List<Employee>
     */
    List<Employee> selectByExampleWithDept(EmployeeExample example);

    /**
     * 主键查询，带部门信息
     * @param empId emp_id
     * @return Employee
     */
    Employee selectByPrimaryKeyWithDept(Integer empId);
}
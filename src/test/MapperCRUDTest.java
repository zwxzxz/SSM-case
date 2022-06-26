import com.github.javafaker.Faker;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import top.zwx.bean.Dept;
import top.zwx.bean.Employee;
import top.zwx.dao.DeptMapper;
import top.zwx.dao.EmployeeMapper;

import java.util.Locale;

/**
 * @program: ssm_crud
 * @description: Spring的项目就可以使用Spring的单元测试，可以自动注入我们需要的组件
 * 1.导入spring-test模块
 * 2.@ContextConfiguration指定spring配置文件位置
 * 3.@ExtendWith(SpringExtension.class)
 * 4.@Autowired要使用的组件
 * @author: zwx
 * @create: 2022-05-18 15:25
 **/

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MapperCRUDTest {
    /**
     * 测试Dept（普通测试方法）
     */
    @Test
    public void testCommonCRUD() {
        //1.创建SpringIOC容器
        ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
        //2.从容器获取mapper
        DeptMapper deptMapper = ioc.getBean(DeptMapper.class);
        Dept dept = deptMapper.selectByPrimaryKey(1);
        System.out.println(dept);
    }


    @Autowired
    DeptMapper deptMapper;

    @Autowired
    EmployeeMapper employeeMapper;

    @Autowired
    SqlSession sqlSession;

    @Test
    public void testCRUD() {
        System.out.println(deptMapper);
        //插入部门
        //deptMapper.insertSelective(new Dept(null,"开发部"));
        //deptMapper.insertSelective(new Dept(null,"测试部"));

        //插入员工
        //System.out.println(employeeMapper);
        //employeeMapper.insertSelective(
        //        new Employee(null,"Jerry","男","4234523@qq.com",1));

        //批量插入多个员工(applicationContext.xml配置sqlSession为批量)
        EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
        DeptMapper deptMapper = sqlSession.getMapper(DeptMapper.class);
        String[] dept = {"人事部", "财务部", "销售部", "企划部", "采购部", "工程部", "行政部", "技术部", "行政部", "财务部"};
        int len = dept.length;
        for (int i = 0; i < len; i++) {
            deptMapper.insertSelective(new Dept(null, dept[i]));
        }
        for (int i = 0; i < 255; i++) {
            Faker employee = new Faker(Locale.CHINA);
            String empName = employee.name().name();
            String gender = "female".equals(employee.dog().gender()) ? "女" : "男";
            String email = employee.internet().emailAddress(String.valueOf(employee.number().numberBetween(524535, 985645332)));
            int did = employee.number().numberBetween(1, len);
            employeeMapper.insertSelective(new Employee(null, empName, gender, email, did));
        }

    }
}

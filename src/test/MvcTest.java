import com.github.pagehelper.PageInfo;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.util.Arrays;

/**
 * @program: ssm_crud
 * @description:
 * @author: zwx
 * @create: 2022-05-18 20:30
 **/
@ExtendWith(SpringExtension.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:applicationContext.xml", "classpath:springMVC.xml"})
public class MvcTest {

    //传入SpringMVC的ioc
    @Autowired
    WebApplicationContext webApplicationContext;
    //虚拟mvc请求，获取到处理结果
    MockMvc mockMvc;

    @BeforeEach
    public void initMockMvc() {
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void testPage() throws Exception {
        //模拟请求拿到返回值
        MvcResult result = mockMvc.perform(
                MockMvcRequestBuilders.get("/emps").param("pageNum", "1"))
                .andReturn();

        //请求后取出pageInfo
        MockHttpServletRequest request = result.getRequest();
        PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
        System.out.println("当前页码："+pageInfo.getPageNum());
        System.out.println("总页数："+pageInfo.getPages());
        System.out.println("总记录数："+pageInfo.getTotal());
        System.out.println("页码显示的页码："+ Arrays.toString(pageInfo.getNavigatepageNums()));
        pageInfo.getList().forEach(System.out::println);
    }

}

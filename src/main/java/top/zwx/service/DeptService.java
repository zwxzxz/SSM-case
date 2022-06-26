package top.zwx.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zwx.bean.Dept;
import top.zwx.dao.DeptMapper;

import java.util.List;

/**
 * @program: ssm_crud
 * @description:
 * @author: zwx
 * @create: 2022-05-20 12:11
 **/
@Service
public class DeptService {
    @Autowired
    private DeptMapper deptMapper;

    public List<Dept> getDepts(){
        List<Dept> depts = deptMapper.selectByExample(null);

        return depts;
    }
}

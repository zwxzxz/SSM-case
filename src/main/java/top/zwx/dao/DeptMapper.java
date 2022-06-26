package top.zwx.dao;

import org.apache.ibatis.annotations.Param;
import top.zwx.bean.Dept;
import top.zwx.bean.DeptExample;

import java.util.List;

/**
 * @author 25748
 */
public interface DeptMapper {
    /**
     * 有条件的计数部门
     * @param example 条件
     * @return long
     */
    long countByExample(DeptExample example);

    /**
     * 有条件删除部门
     * @param example 条件
     * @return int
     */
    int deleteByExample(DeptExample example);

    /**
     * 通过主键删除部门
     * @param deptId dept_id
     * @return int
     */
    int deleteByPrimaryKey(Integer deptId);

    /**
     * 添加部门
     * @param row 部门
     * @return int
     */
    int insert(Dept row);

    /**
     * 有选择性添加
     * @param row 部门
     * @return int
     */
    int insertSelective(Dept row);

    /**
     * 有条件查询部门
     * @param example 条件
     * @return List<Dept>
     */
    List<Dept> selectByExample(DeptExample example);

    /**
     * 通过主键查询部门
     * @param deptId id
     * @return Dept
     */
    Dept selectByPrimaryKey(Integer deptId);

    /**
     * 有选择性(提交null属性，不做更新)，有条件更新
     * @param row 部门
     * @param example 条件
     * @return int
     */
    int updateByExampleSelective(@Param("row") Dept row, @Param("example") DeptExample example);

    /**
     * 有条件更新（提交null属性，更新到表）
     * @param row 部门
     * @param example 条件
     * @return int
     */
    int updateByExample(@Param("row") Dept row, @Param("example") DeptExample example);

    /**
     * 有选择性，通过主键更新
     * @param row 部门
     * @return int
     */
    int updateByPrimaryKeySelective(Dept row);

    /**
     * 更新通过主键(无选择性)
     * @param row 部门
     * @return int
     */
    int updateByPrimaryKey(Dept row);


}
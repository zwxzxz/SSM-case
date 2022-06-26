package top.zwx.bean;

import java.util.HashMap;

/**
 * @program: ssm_crud
 * @description: 通用的返回类
 * @author: zwx
 * @create: 2022-05-19 16:22
 **/
public class Message {

    /**
     * 状态码，100-成功，200-失败
     */
    private int code;

    /**
     * 提示信息
     */
    private String msg;

    /**
     * 返回数据
     */
    private HashMap<String,Object> extend = new HashMap<>();

    public static Message success(){
        Message message = new Message();
        message.setCode(100);
        message.setMsg("处理成功");
        return message;
    }

    public static Message failed(){
        Message message = new Message();
        message.setCode(200);
        message.setMsg("处理失败");
        return message;
    }
    public Message add(String key,Object value){
        this.getExtend().put(key,value);
        return this;
    }


    public Message() {
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public HashMap<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(HashMap<String, Object> extend) {
        this.extend = extend;
    }

}

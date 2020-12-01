package com.sxp.controller;

import com.sxp.pojo.User;
import com.sxp.service.UserService;
import com.sxp.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/findAll")
    public List<User> findAll(){
        return userService.findAll();
    }

    @RequestMapping(value = "/saveORupdate",method = RequestMethod.POST)
    public Result save(@RequestBody User user){
        Result  r = new Result();
        int rows = 0;
        String msg = "";
        if(user.getId() != null){
            rows = userService.update(user);
            msg = "信息编辑成功";
            r.setRows(rows);
            r.setMsg(msg);
        }else{
            rows = userService.save(user);
            msg = "信息添加成功";
            r.setRows(rows);
            r.setMsg(msg);
        }
        return r;
    }

    @RequestMapping("/delete")
    public int delete(Integer id){
        int rows = userService.delete(id);
        return rows;
    }
}

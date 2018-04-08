package com.jk.controller;

import com.jk.model.State;
import com.jk.model.Tree;
import com.jk.model.User;
import com.jk.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/4/4 0004.
 */
@Controller
public class UserController extends  BaseController{
    @Autowired
    private UserService userService;


    @RequestMapping("queryUser")

    public void queryUser(HttpServletResponse  response){

        List<User> list=userService.queryUser();
       super.writeJson(list,response);
    }
   /* @RequestMapping("getTree")
    @ResponseBody
    public void getTree( HttpServletResponse  response){

        List<Tree> list = userService.getTree();
        List<Map<String, Object>> maps = treeStr(list, 0);
        super.writeJson(maps,response);
    }*/

   /* public List<Map<String,Object>> treeStr(List<Tree> list, Integer pid){
        List<Map<String,Object>> newlist = new ArrayList<Map<String, Object>>();
        for (int i = 0; i < list.size(); i++) {
            //获取单个tree对象
            Tree tree = list.get(i);
            Map<String,Object> map = null;
            //判断当前tree对象的pid是否和传过来的pid相等，相等的保存到map中d
            if(tree.getPid() == pid){
                map = new HashMap<String, Object>();
                map.put("id", tree.getId());
                map.put("text", tree.getText());
                map.put("state", tree.getState());
                map.put("url", tree.getUrl());
                map.put("iconCls", tree.getIconCls());
                map.put("nodes", treeStr(list,tree.getId()));
            }
            if(map != null){
                List<Map<String,Object>> li = (List<Map<String, Object>>) map.get("children");
                if(li.size()==0){
                    map.remove("nodes");
                }
                newlist.add(map);
            }
        }
        return newlist;
    }*/


    /**
     * Bootstb树
     */
    @RequestMapping("getTreeBootstb")
    @ResponseBody
    public void getTreeBootstb( HttpServletResponse  response){

        List<Tree> list = userService.getTree();
        List<Map<String, Object>> maps = treeStrb(list, 0);
        super.writeJson(maps,response);
    }

    public List<Map<String,Object>> treeStrb(List<Tree> list,Integer pid){
        List<Map<String,Object>> newlist = new ArrayList<Map<String,Object>>();
        for (int i = 0; i < list.size(); i++) {
            //获取tree对象
            Tree tree = list.get(i);
            Map<String,Object> map = null;
            if(tree.getPid()==pid){
                map = new HashMap<String, Object>();
                map.put("text", tree.getText());
                map.put("id", tree.getTid());
                map.put("state", new State());
                map.put("url", tree.getUrl());
                map.put("icon", tree.getIcon());
                map.put("nodes", treeStrb(list, tree.getTid()));
            }
            if(map != null){
                List<Map<String,Object>> li = (List<Map<String, Object>>) map.get("nodes");
                if(li.size()<1){
                    map.remove("nodes");
                }
                newlist.add(map);
            }
        }
        return newlist;
    }

}

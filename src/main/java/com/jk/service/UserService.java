package com.jk.service;

import com.jk.model.Tree;
import com.jk.model.User;

import java.util.List;

/**
 * Created by Administrator on 2018/4/4 0004.
 */
public interface UserService {

    List<User> queryUser();

    List<Tree> getTree();
}

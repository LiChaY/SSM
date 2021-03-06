package com.atguigu.crowd.funding.service.impl;

import com.atguigu.crowd.funding.entity.Menu;
import com.atguigu.crowd.funding.mapper.MenuMapper;
import com.atguigu.crowd.funding.service.api.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: atcrowdfundingadmin0parent
 * @description
 * @author: li
 * @create: 2020-03-07 21:07
 **/
@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> getAll() {
        List<Menu> menus = menuMapper.selectByExample(null);
        return menus;
    }

    @Override
    public void saveMenu(Menu menu) {
        menuMapper.insert(menu);
    }

    @Override
    public Menu getById(Integer menuId) {
        Menu menu = menuMapper.selectByPrimaryKey(menuId);
        return menu;
    }

    @Override
    public void updateById(Menu menu) {
        menuMapper.updateByPrimaryKey(menu);
    }

    @Override
    public void deleteById(Integer id) {
        menuMapper.deleteByPrimaryKey(id);
    }
}

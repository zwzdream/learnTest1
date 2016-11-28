package com.zwz.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.zwz.pojo.DbUser;  
  
public class UserDao {  
  
    protected static Logger logger = Logger.getLogger("dao");  
  
    public DbUser getDatabase(String username) {  
  
        List<DbUser> users = internalDatabase();  
  
        for (DbUser dbUser : users) {  
            if (dbUser.getUsername().equals(username) == true) {  
                logger.debug("User found");  
                return dbUser;  
            }  
        }  
        logger.error("User does not exist!");  
        throw new RuntimeException("User does not exist!");  
  
    }  
  
    /** 
     * 初始化数据 
     */  
    private List<DbUser> internalDatabase() {  
  
        List<DbUser> users = new ArrayList<DbUser>();  
        DbUser user = null;  
  
        user = new DbUser();  
       user.setUsername("admin");  
  
        // "admin"经过MD5加密后  
       // user.setPassword("21232f297a57a5a743894a0e4a801fc3");  
       // "admin"经过MD5加密后  ,盐值为"admin"
        user.setPassword("ceb4f32325eda6142bd65215f4c0f371");  
      //  user.setPassword("admin");
        user.setAccess(1);  
  
        users.add(user);  
  
        user = new DbUser();  
        user.setUsername("user");  
        //user.setPassword("user");
  
        // "user"经过MD5加密后  
       // user.setPassword("ee11cbb19052e40b07aac0ca060c23ee");
        // "user"经过MD5加密后  ，盐值为“user”
        user.setPassword("47a733d60998c719cf3526ae7d106d13");  
        user.setAccess(0);  
  
        users.add(user);  
  
        return users;  
  
    }  
}  
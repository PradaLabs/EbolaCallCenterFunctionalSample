package com.pradalabs.hackatons.config.seguridad;

import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

import sun.security.jca.GetInstance;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.pradalabs.hackatons.model.seguridad.AppRole;
import com.pradalabs.hackatons.model.seguridad.UserEbolaCallCenter;

/**
 *Esta implementacion permite buscar y registrar usuarios en el sistema de loggeo de google 
 * guardandolo con el Datastore API 
 * @modify Andres Prada
 */
public class GaeDatastoreUserRegistry implements UserRegistry {
   

   private static final String USER_TYPE = "UsuariosClinica";
   private static final String USER_NOMBRE	 = "nombre";
   private static final String USER_APELLIDO = "apellido";
   private static final String USER_DNI = "dni";
   private static final String USER_NICKNAME = "nickname";
   private static final String USER_EMAIL = "emailClinica";
   private static final String USER_GRUPO = "grupo";
   private static final String USER_PASSWORD = "password";
   private static final String USER_ENABLED = "enabled";
   private static final String USER_AUTHORITIES = "authorities";

   public UserEbolaCallCenter findUser(String userId) {
	   
       Key key = KeyFactory.createKey(USER_TYPE, userId);
       DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
       
       try {
           Entity user = datastore.get(key);

           long binaryAuthorities = (Long)user.getProperty(USER_AUTHORITIES);
           Set<AppRole> roles = EnumSet.noneOf(AppRole.class);

           for (AppRole r : AppRole.values()) {
               if ((binaryAuthorities & (1 << r.getBit())) != 0) {
                   roles.add(r);
               }
           }
           UserEbolaCallCenter gaeUser=new UserEbolaCallCenter(user.getKey().getName(),
        		   (String)user.getProperty(USER_EMAIL),
        		   (String)user.getProperty(USER_NOMBRE),
        		   (String)user.getProperty(USER_APELLIDO),
        		   (String)user.getProperty(USER_DNI),
        		   (String)user.getProperty(USER_NICKNAME),
				   (String)user.getProperty(USER_GRUPO),
				   (String)user.getProperty(USER_PASSWORD),
				   roles,
				   (Boolean)user.getProperty(USER_ENABLED));

           return gaeUser;

       } catch (EntityNotFoundException e) {
           
           return null;
       }
   }

   public void registerUser(UserEbolaCallCenter newUser) {
       

       Key key = KeyFactory.createKey(USER_TYPE, newUser.getUserId());
       Entity user = new Entity(key);
       user.setProperty(USER_EMAIL, newUser.getContacEmail());
       user.setProperty(USER_NOMBRE, newUser.getFirstName());
       user.setProperty(USER_APELLIDO, newUser.getLastName());
       user.setProperty(USER_DNI, newUser.getNumberId());
       user.setProperty(USER_NICKNAME, newUser.getNickName());
       user.setProperty(USER_GRUPO, newUser.getGrup());
       user.setProperty(USER_PASSWORD,newUser.getPassword());
       user.setUnindexedProperty(USER_ENABLED, newUser.isEnabled());

       Collection<AppRole> roles = newUser.getAuthorities();

       long binaryAuthorities = 0;

       for (AppRole r : roles) {
           binaryAuthorities |= 1 << r.getBit();
       }

       user.setUnindexedProperty(USER_AUTHORITIES, binaryAuthorities);

       DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
       datastore.put(user);
   }

   public void removeUser(String userId) {
       DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
       Key key = KeyFactory.createKey(USER_TYPE, userId);

       datastore.delete(key);
   }
}

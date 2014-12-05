package com.pradalabs.hackatons.config.seguridad;

import com.pradalabs.hackatons.model.seguridad.UserEbolaCallCenter;

public interface UserRegistry {
	  UserEbolaCallCenter findUser(String userId);
	  void registerUser(UserEbolaCallCenter newUser);
	  void removeUser(String userId);
	}
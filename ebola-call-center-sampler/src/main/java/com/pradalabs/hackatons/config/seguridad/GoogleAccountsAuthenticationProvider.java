package com.pradalabs.hackatons.config.seguridad;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;

import com.google.appengine.api.users.User;
import com.pradalabs.hackatons.model.seguridad.UserEbolaCallCenter;

public class GoogleAccountsAuthenticationProvider implements AuthenticationProvider {
    private UserRegistry userRegistry;

    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
    	
        User googleUser = (User) authentication.getPrincipal();
        UserEbolaCallCenter user = userRegistry.findUser(googleUser.getUserId());
        
        if (user == null) { 
        	user = userRegistry.findUser(googleUser.getEmail());
        	if(user == null){
        	user=new UserEbolaCallCenter(googleUser.getUserId(), googleUser.getEmail(), googleUser.getNickname());
        	}
        }

        if (!user.isEnabled()) {
            throw new DisabledException("Cuenta desabilidata, por favor comuniquese con el administrador del sistema.");
        }

        return new GaeUserAuthentication(user, authentication.getDetails());
    }

    public final boolean supports(Class<?> authentication) {
        return PreAuthenticatedAuthenticationToken.class.isAssignableFrom(authentication);
    }

    public void setUserRegistry(UserRegistry userRegistry) {
        this.userRegistry = userRegistry;
    }
}
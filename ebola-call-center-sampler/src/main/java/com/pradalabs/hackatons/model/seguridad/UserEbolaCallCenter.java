package com.pradalabs.hackatons.model.seguridad;

import java.io.Serializable;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

import org.codehaus.jackson.annotate.JsonIgnore;



public class UserEbolaCallCenter implements Serializable {
	
	private static final long serialVersionUID = -5119466570220708726L;
	
	
   private final String userId;
   private final String contacEmail;
   private final String firstName;
   private final String lastName;
   private final String numberId;
   private final String grup;
   private final String nickName;
   private final String password;
   private final Set<AppRole> authorities;
   private final boolean enabled;
   

   /**
     * Pre-registration constructor.
     *
    */
   @JsonIgnore
   public UserEbolaCallCenter(String userId, String contacEmail,String nickName) {
	super();
	this.userId = userId;
	this.contacEmail = contacEmail;
	this.nickName = nickName;
	this.firstName = null;
	this.lastName = null;
	this.numberId = null;
	this.grup = null;
	this.password = null;
	this.authorities = EnumSet.of(AppRole.NEW_USER);
	this.enabled = true;
	}

    
   public UserEbolaCallCenter() {
	   this.userId = null;
		this.contacEmail = null;
		this.firstName = null;
		this.lastName = null;
		this.numberId = null;
		this.nickName=null;
		this.grup = null;
		this.password = null;
		this.authorities = null;
		this.enabled = false;
   }


/**
     *  constructor cuando se registra un Usuario
    */
   @JsonIgnore
   public UserEbolaCallCenter(String userId, String contacEmail, String firstName,
		String lastname, String numberId,String nickName, String grup,String password,
		Set<AppRole> authorities, boolean enabled) {
	super();
	this.userId = userId;
	this.contacEmail = contacEmail;
	this.firstName = firstName;
	this.lastName = lastname;
	this.numberId = numberId;
	this.nickName=nickName;
	this.grup = grup;
	this.password = password;
	this.authorities = authorities;
	this.enabled = enabled;
	}

	public String getUserId() {
		return userId;
	}
	
	public String getContacEmail() {
		return contacEmail;
	}
	
	public String getFirstName() {
		return firstName;
	}


	public String getLastName() {
		return lastName;
	}
	
	
	public String getNumberId() {
		return numberId;
	}
	
	
	public String getGrup() {
		return grup;
	}
	
	
	public String getNickName() {
		return nickName;
	}
	
	
	public String getPassword() {
		return password;
	}
	
	
	public Set<AppRole> getAuthorities() {
		return authorities;
	}
	
	
	public boolean isEnabled() {
		return enabled;
	}
	
}
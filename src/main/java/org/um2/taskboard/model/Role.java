package org.um2.taskboard.model;

import org.springframework.security.core.GrantedAuthority;

/**
 * Created by BEUGNON on 15/11/2014.
 */
public class Role implements GrantedAuthority {


    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String getAuthority()
    {
        return "ROLE_USER";
    }
}

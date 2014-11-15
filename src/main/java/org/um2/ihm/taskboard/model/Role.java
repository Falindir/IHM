package org.um2.ihm.taskboard.model;

import org.springframework.security.core.GrantedAuthority;

/**
 * Created by BEUGNON on 15/11/2014.
 */
public class Role implements GrantedAuthority {


    public String getAuthority()
    {
        return "ROLE_USER";
    }
}

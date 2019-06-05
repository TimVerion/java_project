package com.park.pojo;

import java.util.Arrays;

public class TbClient {
    private Integer id;

    private String username;

    private String password;
    
    private byte[] isactived;
    
    public byte[] getIsactived() {
		return isactived;
	}

	public void setIsactived(byte[] isactived) {
		this.isactived = isactived;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

	@Override
	public String toString() {
		return "TbClient [id=" + id + ", username=" + username + ", password="
				+ password + ", isactived=" + Arrays.toString(isactived) + "]";
	}

	
    
}
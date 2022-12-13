package com.finalProject.error;

import lombok.Data;

@Data
public class BaseException extends RuntimeException {

    private int code;
    private String msg;

    public BaseException(int code, String msg) {
        super(msg);
        this.code = code;
    }
}

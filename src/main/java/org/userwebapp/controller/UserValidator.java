package org.userwebapp.controller;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.userwebapp.model.User;

public class UserValidator implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        if (!user.getPassword().equals(user.getReEnteredPassword())) {
            errors.rejectValue("reEnteredPassword", "user.reEnteredPassword.mismatch", "Passwords do not match");
        }
    }
}

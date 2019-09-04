package com.example.tweat.service;


import com.example.tweat.domain.Role;
import com.example.tweat.domain.User;
import com.example.tweat.repos.UserRepo;
import org.hamcrest.CoreMatchers;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.ArgumentMatchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Collections;

import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserSeviceTest {

    @Autowired
    private UserSevice userSevice;

    @MockBean
    private PasswordEncoder encoder;

    @MockBean
    private MailSender mailSender;

    @MockBean
    private UserRepo userRepo;

    @Test
    public void addUser() {
        User user = new User();

        user.setEmail("some@mail.ru");

        boolean isUserCreated = userSevice.addUser(user);

        Assert.assertTrue(isUserCreated);
        Assert.assertNotNull(user.getActivationCode());
        Assert.assertTrue(CoreMatchers.is(user.getRoles()).matches(Collections.singleton(Role.USER)));

        verify(userRepo, times(1)).save(user);
        verify(mailSender, times(1)).send(ArgumentMatchers.eq(user.getEmail()),
                ArgumentMatchers.anyString(),
                ArgumentMatchers.anyString());

    }

    @Test
    public void addUserFail() {
        User user = new User();

        user.setUsername("John");

        doReturn(new User()).when(userRepo).findByUsername("John");

        boolean isUserCreated = userSevice.addUser(user);

        Assert.assertFalse(isUserCreated);

        verify(userRepo, times(0)).save(ArgumentMatchers.any(User.class));
        verify(mailSender, times(0)).send(ArgumentMatchers.anyString(),
                ArgumentMatchers.anyString(),
                ArgumentMatchers.anyString());


    }

    @Test
    public void activateUser() {
        User user = new User();

        user.setActivationCode("bingo");

        doReturn(user).when(userRepo).findByActivationCode("activate");

        boolean isUserActivate = userSevice.activateUser("activate");

        Assert.assertTrue(isUserActivate);
        Assert.assertNull(user.getActivationCode());

        verify(userRepo, times(1)).save(user);

    }

    @Test
    public void activateUserFail() {


        boolean isUserActivate = userSevice.activateUser("activate");

        Assert.assertFalse(isUserActivate);


        verify(userRepo, times(0)).save(ArgumentMatchers.any(User.class));

    }
}
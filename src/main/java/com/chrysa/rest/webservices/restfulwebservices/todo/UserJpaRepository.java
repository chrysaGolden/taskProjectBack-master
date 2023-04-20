package com.chrysa.rest.webservices.restfulwebservices.todo;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserJpaRepository extends JpaRepository<User, Long> {
    List<User> findByUsername(String name);
}


package com.chrysa.rest.webservices.restfulwebservices.todo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ExpensesJpaRepository extends JpaRepository<Expenses, Long> {
    @Query("SELECT e FROM Expenses e JOIN e.users u WHERE u.username = :username")
    List<Expenses> findByUsername(@Param("username") String username);
}


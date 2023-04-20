package com.chrysa.rest.webservices.restfulwebservices.todo;




import jakarta.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
public class Expenses {


    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false)
    private String typeOfExpense;

    @Column(nullable = false)
    private BigDecimal amount;

    @Column(nullable = false)
    private Date paidUntil;

    @ManyToMany
    @JoinTable(name = "expense_user",
            joinColumns = @JoinColumn(name = "expense_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private Set<User> users = new HashSet<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTypeOfExpense() {
        return typeOfExpense;
    }

    public void setTypeOfExpense(String typeOfExpense) {
        this.typeOfExpense = typeOfExpense;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Date getPaidUntil() {
        return paidUntil;
    }

    public void setPaidUntil(Date paidUntil) {
        this.paidUntil = paidUntil;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Expenses expenses)) return false;
        return Objects.equals(getId(), expenses.getId()) && Objects.equals(getTypeOfExpense(), expenses.getTypeOfExpense()) && Objects.equals(getAmount(), expenses.getAmount()) && Objects.equals(getPaidUntil(), expenses.getPaidUntil()) && Objects.equals(getUsers(), expenses.getUsers());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getTypeOfExpense(), getAmount(), getPaidUntil(), getUsers());
    }
}


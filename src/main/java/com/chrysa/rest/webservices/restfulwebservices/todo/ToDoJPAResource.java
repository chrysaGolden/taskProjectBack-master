package com.chrysa.rest.webservices.restfulwebservices.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@CrossOrigin(origins="http://localhost:4200")
@RestController
public class ToDoJPAResource {

    @Autowired
    private TodoJpaRepository todoJpaRepository;

    @Autowired
    private CalendarJpaRepository calendarJpaRepository;

    @Autowired
    private ExpensesJpaRepository expensesJpaRepository;

    @Autowired
    private ToDoHardcodedService todoService;

    @Autowired
    private UserJpaRepository userJpaRepository;

    @GetMapping("/jpa/users/{username}/todos")
    public List<Todo> getAllTodos(@PathVariable String username){
        return todoJpaRepository.findByUsername(username);
    }

    @GetMapping("/jpa/users/{username}/todos/{id}")
    public Todo getTodo(@PathVariable String username, @PathVariable long id){
        return todoJpaRepository.findById(id).get();
    }

    //2. Delete atodo for a user
    //DELETE /users/{user_name}/todos/{todo_id}

    @DeleteMapping ("/jpa/users/{username}/todos/{id}")
    public ResponseEntity<Void> deleteTodo(@PathVariable String username, @PathVariable long id){

        //Todo todo=todoService.deleteById(id);
        todoJpaRepository.deleteById(id);
        return ResponseEntity.noContent().build();


    }

    //update
    @PutMapping("/jpa/users/{username}/todos/{id}")
    public ResponseEntity<Todo> updateTodo(@PathVariable String username, @PathVariable long id, @RequestBody Todo todo){
        todo.setUsername(username);
        Todo todoUpdated=todoJpaRepository.save(todo);
        return new ResponseEntity<Todo>(todo, HttpStatus.OK);
    }

    @PostMapping("/jpa/users/{username}/todos")
    public ResponseEntity<Void> createTodo(@PathVariable String username, @RequestBody Todo todo){
        todo.setUsername(username);
        Todo createdTodo = todoJpaRepository.save(todo);
        URI uri= ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}").buildAndExpand(createdTodo.getId()).toUri();
        return ResponseEntity.created(uri).build();
    }


    @Autowired
    private GuestsHardcodedService guestsService;

    @GetMapping("/jpa/users/{username}/calendar")
    public List<GuestsCalendar> getAllGuests(@PathVariable String username){
        return calendarJpaRepository.findByUsername(username);
    }

    @GetMapping("/jpa/users/{username}/calendar/{id}")
    public GuestsCalendar getGuests(@PathVariable String username, @PathVariable long id){
        return calendarJpaRepository.findById(id).get();
    }

//    @DeleteMapping ("/jpa/users/{username}/calendar/{id}")
//    public ResponseEntity<Void> deleteGuest(@PathVariable String username, @PathVariable long id){
//
//        //Todo todo=todoService.deleteById(id);
//        calendarJpaRepository.deleteById(id);
//        return ResponseEntity.noContent().build();
//    }
//
//    @PutMapping("/jpa/users/{username}/calendar/{id}")
//    public ResponseEntity<GuestsCalendar> updateCalendar(@PathVariable String username, @PathVariable long id, @RequestBody GuestsCalendar calendar){
//        calendar.setUsername(username);
//        GuestsCalendar guestUpdated=calendarJpaRepository.save(calendar);
//        return new ResponseEntity<GuestsCalendar>(calendar, HttpStatus.OK);
//    }
//
//    @PostMapping("/jpa/users/{username}/calendar")
//    public ResponseEntity<GuestsCalendar> createGuest(@PathVariable String username, @RequestBody GuestsCalendar calendar){
//        calendar.setUsername(username);
//        GuestsCalendar createdGuest = calendarJpaRepository.save(calendar);
//        URI uri= ServletUriComponentsBuilder.fromCurrentRequest()
//                .path("/{id}").buildAndExpand(createdGuest.getId()).toUri();
//        return ResponseEntity.created(uri).body(createdGuest);
//    }

    @GetMapping("/jpa/users/{username}/expenses")
    public List<Expenses> getAllExpenses(@PathVariable String username){
        List<Expenses> expenses = expensesJpaRepository.findByUsername(username);
        expenses.forEach(expense -> expense.setUsers(expense.getUsers())); // Set the list of users for each expense
        return expenses;
    }


    @GetMapping("/jpa/users/{username}/expenses/{id}")
    public Expenses getExpense(@PathVariable String username, @PathVariable long id) {
        return expensesJpaRepository.findById(id).get();
    }

        @PutMapping("/jpa/users/{username}/expenses/{id}")
        public ResponseEntity<Expenses> updateExpense(@PathVariable String username, @PathVariable long id, @RequestBody Expenses expense){

        Optional<Expenses> expenseOptional = expensesJpaRepository.findById(id);

            if (!expenseOptional.isPresent())
                return ResponseEntity.notFound().build();

            Expenses existingExpense = expenseOptional.get();

            existingExpense.setTypeOfExpense(expense.getTypeOfExpense());
            existingExpense.setAmount(expense.getAmount());
            existingExpense.setPaidUntil(expense.getPaidUntil());
            existingExpense.setUsers(expense.getUsers()); // Update the users associated with the expense

            Expenses updatedExpense = expensesJpaRepository.save(existingExpense);

            return new ResponseEntity<Expenses>(updatedExpense, HttpStatus.OK);
        }


    @PostMapping("/jpa/users/{username}/expenses")
    public ResponseEntity<Void> createExpense(@PathVariable String username, @RequestBody Expenses expense) {

        Expenses createdExpense = expensesJpaRepository.save(expense);

        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(createdExpense.getId())
                .toUri();

        return ResponseEntity.created(uri).build();
    }




}

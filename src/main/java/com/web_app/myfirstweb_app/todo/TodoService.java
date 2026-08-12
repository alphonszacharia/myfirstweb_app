package com.web_app.myfirstweb_app.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;


@Service
public class TodoService {

    private static List<Todo> todos = new ArrayList<>();
    private static int todosCount=1;
    static{
        
                todos.add(new Todo(
                todosCount++,
                "john",
                "Learn Spring Boot",
                LocalDate.of(2026, 7, 28),
                false
        ));

        todos.add(new Todo(
                todosCount++,
                "alphons",
                "Complete Java project",
                LocalDate.of(2026, 8, 5),
                true
        ));

        todos.add(new Todo(
                todosCount++,
                "bob",
                "Read Java documentation",
                LocalDate.now().plusDays(3),
                false
        ));

    }
    public List<Todo> findByUsername(String username){

        Predicate<? super Todo> predicate = todo ->todo.getUsername().equalsIgnoreCase(username);
        return todos.stream().filter(predicate).toList();
    }
    
    public void addTodo(String username,String description,LocalDate targetDate,boolean done){
        
        Todo todo =  new Todo(todosCount++,username,description,targetDate,done);
        todos.add(todo);
    }
    public void deleteById(int id){
        Predicate<? super Todo> predicate = todo ->todo.getId()==id;
        todos.removeIf(predicate);
  
    }

    public Todo findByID(int id) {
        Predicate<? super Todo> predicate = todo ->todo.getId()==id;
        Todo todo=todos.stream().filter(predicate).findFirst().get();
        return todo;

    }

    public void updateTodo(@Valid Todo todo) {
        deleteById(todo.getId());
        todos.add(todo);
    }
}

package com.web_app.myfirstweb_app.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;


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
                "alice",
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
        return todos;
    }
    
    public void addTodo(String username,String description,LocalDate targetDate,boolean done){
        
        Todo todo =  new Todo(todosCount++,username,description,targetDate,done);
        todos.add(todo);
    }

}

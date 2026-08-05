package com.web_app.myfirstweb_app.todo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("name")
public class TodoController {
        
        public TodoController(TodoService todoService) {

            this.todoService = todoService;
        }

        private TodoService todoService;

        @RequestMapping("list-todos")   
        public String listAllTodos(ModelMap model){

            List<Todo> todos =todoService.findByUsername("john");
            //System.out.println(todos);
            model.addAttribute("todos", todos);
            return "listTodos";
        }
     @RequestMapping(value = "add-todo",method=RequestMethod.GET)
        public String showNewTodoPage(ModelMap model){
            String username=(String)model.get("name");
            Todo todo = new Todo(0, username, "", LocalDate.now().plusYears(2), false);
            model.put("todo",todo);
            model.put("action", "add-todo");
            return "todo";
        }
        @RequestMapping(value = "add-todo",method=RequestMethod.POST)
        public String addNewTodo(ModelMap model,@Valid Todo todo,BindingResult result){

            if(result.hasErrors()){
                return "todo";
            }

            todoService.addTodo((String)model.get("name"), todo.getDescription(),LocalDate.now().plusYears(2), false);
            return "redirect:list-todos";
        }

        @RequestMapping("delete-todo")   
        public String deleteTodo(@RequestParam int id){

            todoService.deleteById(id);
            return "redirect:list-todos";
        }
        @RequestMapping(value="update-todo",method=RequestMethod.GET)   
        public String showUpdateTodoPage(@RequestParam int id,ModelMap model){

            Todo todo = todoService.findByID(id);
            model.put("todo",todo);
            model.put("action", "update-todo");
            return "todo";
        }

        @RequestMapping(value = "update-todo",method=RequestMethod.POST)
        public String updateTodo(ModelMap model,@Valid Todo todo,BindingResult result){

            if(result.hasErrors()){ 
                return "todo";
            }

            todoService.updateTodo(todo);
            //String username= (String) model.get("name");
            //#todo.setUsername(username);
            return "redirect:list-todos";
        }
}


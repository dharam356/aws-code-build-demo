package org.example;

import org.example.model.Worker;
import org.example.service.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@SpringBootApplication
@RestController
public class CodeBuildDemo {
    @Autowired
    private WorkerService service;
    public static void main(String[] args) {
        SpringApplication.run(CodeBuildDemo.class, args);
    }

    @GetMapping
    public String welcomeMessage() {
        return "Hello World...!!!";
    }

    @GetMapping("/workers")
    public List<Worker> getAllWorkers() {
        return service.getAll();
    }

    @GetMapping("/workers/{id}")
    public Worker getWorkerById(@PathVariable("id") Integer id) {
        return service.getWorkerById(id);
    }
}

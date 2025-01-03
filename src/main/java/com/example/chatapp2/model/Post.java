package com.example.chatapp2.model;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDateTime;

@Entity
@Data
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String title;

    @Column(nullable = false, length = 1000)
    private String content;

    private LocalDateTime createdAt = LocalDateTime.now();

    private String author;
}

package com.klef.jfsd.repository;

import com.klef.jfsd.model.*;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BlogRepository extends JpaRepository<Blog, Long> {
    // Additional custom queries if needed
	List<Blog> findAll();
	List<Blog> findByAuthor(String author);
}

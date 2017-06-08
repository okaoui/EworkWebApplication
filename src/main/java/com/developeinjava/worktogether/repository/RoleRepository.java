package com.developeinjava.worktogether.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.developeinjava.worktogether.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{

}

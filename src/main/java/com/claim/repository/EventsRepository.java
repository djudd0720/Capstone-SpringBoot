package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claim.entity.Events;


@Repository
public interface EventsRepository extends JpaRepository<Events, Integer>{

}

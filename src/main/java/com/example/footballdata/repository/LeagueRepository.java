package com.example.footballdata.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.footballdata.model.League;

public interface LeagueRepository extends JpaRepository<League, Long> {
}

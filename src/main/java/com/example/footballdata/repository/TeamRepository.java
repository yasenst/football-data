package com.example.footballdata.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.footballdata.model.Team;

import java.util.List;

public interface TeamRepository extends JpaRepository<Team, Long> {
    Team findByName(String name);
    List<Team> getAllByLeagueId(Long leagueIde);
}
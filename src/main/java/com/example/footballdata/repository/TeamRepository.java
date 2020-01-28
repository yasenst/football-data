package com.example.footballdata.repository;

import com.example.footballdata.model.Fixture;
import com.example.footballdata.model.Team;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TeamRepository extends JpaRepository<Team, Long> {
    Team findByName(String name);
    List<Team> getAllByLeagueId(Long leagueIde);
}
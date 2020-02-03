package com.example.footballdata.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.example.footballdata.model.Fixture;

public interface FixtureService {
    Page<Fixture> findAll(Pageable pageable);
    Page<Fixture> getAllByLeagueId(Long id, Pageable pageable);
    Page<Fixture> getAllByHomeTeamOrAwayTeam(String name, Pageable pageable);
    void save(Fixture fixture);
}

package com.example.footballdata.repository;

import com.example.footballdata.model.League;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LeagueRepository extends JpaRepository<League, Long> {
}

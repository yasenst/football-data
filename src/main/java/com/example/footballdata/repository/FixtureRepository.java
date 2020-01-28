package com.example.footballdata.repository;

import com.example.footballdata.model.Fixture;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface FixtureRepository extends JpaRepository<Fixture, Long> {
    Page<Fixture> getAllByLeagueId(Long leagueId, Pageable pageable);

    @Query(
            value="SELECT * from fixtures f where f.home_team=?1 or f.away_team=?1",
            nativeQuery = true)
    Page<Fixture>  getAllByHomeTeamOrAwayTeam(String name, Pageable pageable);
}

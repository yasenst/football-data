package com.example.footballdata.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import org.springframework.stereotype.Service;

import com.example.footballdata.model.Fixture;
import com.example.footballdata.model.Team;

import com.example.footballdata.repository.FixtureRepository;
import com.example.footballdata.repository.TeamRepository;

@Service
public class DefaultFixtureService implements FixtureService {

    private FixtureRepository fixtureRepository;

    private TeamRepository teamRepository;

    @Autowired
    public DefaultFixtureService(FixtureRepository fixtureRepository, TeamRepository teamRepository) {
     this.fixtureRepository = fixtureRepository;
     this.teamRepository = teamRepository;
    }


    @Override
    public Page<Fixture> findAll(Pageable pageable) {
        return fixtureRepository.findAll(pageable);
    }

    @Override
    public Page<Fixture> getAllByLeagueId(Long id, Pageable pageable) {
        return fixtureRepository.getAllByLeagueId(id, pageable);
    }

    @Override
    public Page<Fixture> getAllByHomeTeamOrAwayTeam(String name, Pageable pageable) {
        return fixtureRepository.getAllByHomeTeamOrAwayTeam(name, pageable);
    }

    @Override
    public void save(Fixture fixture) {
        Team homeTeam = teamRepository.findByName(fixture.getHomeTeam());
        Team awayTeam = teamRepository.findByName(fixture.getAwayTeam());

        int homeTeamGoals = homeTeam.getGoalsFor();
        int homeTeamGoalsAgainst = homeTeam.getGoalsAgainst();

        int awayTeamGoals = awayTeam.getGoalsFor();
        int awayTeamGoalsAgainst = awayTeam.getGoalsAgainst();

        homeTeam.setGoalsFor(homeTeamGoals + fixture.getHomeTeamScore());
        homeTeam.setGoalsAgainst(homeTeamGoalsAgainst + fixture.getAwayTeamScore());

        awayTeam.setGoalsFor(awayTeamGoals + fixture.getAwayTeamScore());
        awayTeam.setGoalsAgainst(awayTeamGoalsAgainst + fixture.getHomeTeamScore());

        if (fixture.getHomeTeamScore() > fixture.getAwayTeamScore()) {
            homeTeam.setWon(homeTeam.getWon() + 1);
            awayTeam.setLoss(awayTeam.getLoss() + 1);
        } else if (fixture.getHomeTeamScore() < fixture.getAwayTeamScore()) {
            awayTeam.setWon(awayTeam.getWon() + 1);
            homeTeam.setLoss(homeTeam.getLoss() + 1);
        } else {
            homeTeam.setDraw(homeTeam.getDraw() + 1);
            awayTeam.setDraw(awayTeam.getDraw() + 1);
        }

        teamRepository.save(homeTeam);
        teamRepository.save(awayTeam);
        fixtureRepository.save(fixture);
    }
}

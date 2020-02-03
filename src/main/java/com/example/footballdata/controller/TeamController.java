package com.example.footballdata.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.footballdata.model.Team;

import com.example.footballdata.repository.TeamRepository;

import java.util.List;

@RestController
@RequestMapping("/api/teams")
public class TeamController {

    private TeamRepository teamRepository;

    @Autowired
    public TeamController(TeamRepository teamRepository) {
        this.teamRepository = teamRepository;
    }

    @GetMapping
    public Team getTeamByName(@RequestParam("name") String name) {
        return teamRepository.findByName(name);
    }

    @GetMapping("/league/{id}")
    public List<Team> getTeamsByLeague(@PathVariable("id") Long leagueId) {
        return teamRepository.getAllByLeagueId(leagueId);
    }
}

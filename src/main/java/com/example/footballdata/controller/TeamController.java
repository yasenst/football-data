package com.example.footballdata.controller;

import com.example.footballdata.model.Fixture;
import com.example.footballdata.model.Team;
import com.example.footballdata.repository.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/teams")
public class TeamController {

    @Autowired
    private TeamRepository teamRepository;

    @GetMapping("")
    public Team getTeamByName(@RequestParam("name") String name) {
        return teamRepository.findByName(name);
    }

    @GetMapping("/league/{id}")
    public List<Team> getTeamsByLeague(@PathVariable("id") Long leagueId) {
        return teamRepository.getAllByLeagueId(leagueId);
    }
}

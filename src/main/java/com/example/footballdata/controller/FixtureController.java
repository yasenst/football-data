package com.example.footballdata.controller;

import com.example.footballdata.model.Fixture;
import com.example.footballdata.model.Team;
import com.example.footballdata.service.DefaultFixtureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/fixtures")
public class FixtureController {

    @Autowired
    DefaultFixtureService fixtureService;

    @GetMapping
    public Page<Fixture> listAll(@RequestParam(defaultValue = "0") int page) {
        return fixtureService.findAll(PageRequest.of(page, 10));
    }

    @GetMapping("/{id}")
    public Page<Fixture> listByLeague(@PathVariable("id") Long leagueId, @RequestParam(defaultValue = "0") int page) {
        return fixtureService.getAllByLeagueId(leagueId, PageRequest.of(page, 10));
    }

    @GetMapping("/team/{teamName}")
    public Page<Fixture> listByTeam(@PathVariable("teamName") String teamName, @RequestParam(defaultValue = "0") int page) {
        return fixtureService.getAllByHomeTeamOrAwayTeam(teamName, PageRequest.of(page, 10));
    }

    @PostMapping
    public void create(@RequestBody Fixture fixture) {
        fixtureService.save(fixture);
    }
}

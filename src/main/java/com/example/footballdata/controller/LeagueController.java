package com.example.footballdata.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.footballdata.model.League;

import com.example.footballdata.repository.LeagueRepository;

import java.util.List;

@RestController
@RequestMapping("/api/leagues")
public class LeagueController {

    private LeagueRepository leagueRepository;

    @Autowired
    public LeagueController(LeagueRepository leagueRepository) {
        this.leagueRepository = leagueRepository;
    }

    @GetMapping
    public List<League> list() {
        return leagueRepository.findAll();
    }
}

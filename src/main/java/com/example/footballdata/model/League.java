package com.example.footballdata.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "leagues")
public class League implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "leagueID")
    private Long id;

    @NotBlank
    @Column(name = "name")
    private String name;

    @JsonManagedReference
    @OneToMany(mappedBy = "league", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<Team> teams;

    @JsonManagedReference
    @OneToMany(mappedBy = "league", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<Fixture> fixtures;

    public League() {
        this.teams = new HashSet<>();
        this.fixtures = new HashSet<>();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Team> getTeams() {
        return teams;
    }

    public void setTeams(Set<Team> teams) {
        this.teams = teams;
    }

    public Set<Fixture> getFixtures() {
        return fixtures;
    }

    public void setFixtures(Set<Fixture> fixtures) {
        this.fixtures = fixtures;

        //fixtures.forEach(fixture -> fixture.setLeague(this));
    }
}

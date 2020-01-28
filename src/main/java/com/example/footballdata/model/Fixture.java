package com.example.footballdata.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "fixtures")
public class Fixture {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fixtureID")
    private Long id;

    @NotBlank
    private String homeTeam;

    @NotBlank
    private String awayTeam;

    @NotNull
    private Integer homeTeamScore;

    @NotNull
    private Integer awayTeamScore;

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    @JsonFormat(pattern="yyyy-MM-dd HH:mm")
    private Date fixtureDate = new Date();

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name="leagueID")
    private League league;

    public Fixture() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHomeTeam() {
        return homeTeam;
    }

    public void setHomeTeam(String homeTeam) {
        this.homeTeam = homeTeam;
    }

    public String getAwayTeam() {
        return awayTeam;
    }

    public void setAwayTeam(String awayTeam) {
        this.awayTeam = awayTeam;
    }

    public int getHomeTeamScore() {
        return homeTeamScore;
    }

    public void setHomeTeamScore(Integer homeTeamScore) {
        this.homeTeamScore = homeTeamScore;
    }

    public int getAwayTeamScore() {
        return awayTeamScore;
    }

    public void setAwayTeamScore(Integer awayTeamScore) {
        this.awayTeamScore = awayTeamScore;
    }

    public Date getFixtureDate() {
        return fixtureDate;
    }

    public void setFixtureDate(Date fixtureDate) {
        this.fixtureDate = fixtureDate;
    }

    public League getLeague() {
        return league;
    }

    public void setLeague(League league) {
        this.league = league;
    }
}

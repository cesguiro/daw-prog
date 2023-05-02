package com.fpmislata.ejercicio14_3.domain.service.impl;

import java.util.List;

import com.fpmislata.ejercicio14_3.domain.entity.Actor;
import com.fpmislata.ejercicio14_3.domain.entity.Movie;
import com.fpmislata.ejercicio14_3.domain.service.MovieService;
import com.fpmislata.ejercicio14_3.persistence.ActorRepository;
import com.fpmislata.ejercicio14_3.persistence.MovieRepository;
import com.fpmislata.ejercicio14_3.persistence.impl.ActorRepositoryJDBCImpl;
import com.fpmislata.ejercicio14_3.persistence.impl.MovieRepositoryJDBCImpl;

public class MovieServiceImpl implements MovieService{

    private final MovieRepository movieRepository = new MovieRepositoryJDBCImpl();
    private final ActorRepository actorRepository = new ActorRepositoryJDBCImpl();

    @Override
    public List<Movie> getAll() {
        return movieRepository.getAll();
    }

    @Override
    public Movie findByImdbId(String imdb_id) {
        Movie movie = movieRepository.findByImdbId(imdb_id);
        List<Actor> actors = actorRepository.findByMovieImdbId(imdb_id);
        movie.setActors(actors);
        return movie;
    }

    @Override
    public void insert(Movie movie) {
        movieRepository.insert(movie);
    }

    @Override
    public void delete(String imdb_id) {
        movieRepository.delete(imdb_id);
    }

    @Override
    public void update(Movie movie) {
        movieRepository.update(movie);
    }

}

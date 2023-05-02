package com.fpmislata.ejercicio14_3.persistence;

import java.util.List;

import com.fpmislata.ejercicio14_3.domain.entity.Movie;

public interface MovieRepository {
    
    public List<Movie> getAll();

    public Movie findByImdbId(String imdb_id);

    public void insert(Movie movie);

    public void delete(String imdb_id);

    void update(Movie movie);
}

package com.fpmislata.ejercicio14_3.persistence;

import java.util.List;

import com.fpmislata.ejercicio14_3.domain.entity.Actor;

public interface ActorRepository {

    List<Actor> findByMovieImdbId(String imdb_id);

    List<Actor> getAll();

    Actor findByImdbId(String actor_id);

}

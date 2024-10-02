// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract MovieContract {
    struct Movie {
        string name;
        string director;
    }

    mapping(uint => Movie) movie;

    function addMovie(uint _movieId, string memory _title, string memory _directorName) public {
        movie[_movieId] = Movie(_title, _directorName);
    }

    function getMovie(uint _movieId) public view returns (Movie memory) {
        return movie[_movieId];
    }
}

package com.example.UberProject_EntityService.models;

import jakarta.persistence.Entity;
import jakarta.persistence.PrimaryKeyJoinColumn;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@PrimaryKeyJoinColumn(name = "passenger_review_id")
public class PassengerReview extends Review{

    protected String passengerReviewComment;

    protected String passengerReviewRating;
}

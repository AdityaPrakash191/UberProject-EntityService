package com.example.UberProject_EntityService.models;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "booking_review")

public class Review extends BaseModel {

    @OneToOne(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
    @JoinColumn(nullable = false)
    private Booking booking;

    @Column(nullable = false)
    private String content;

    private Double rating;

    @Override
    public String toString(){
        return this.content+" "+this.rating+" "+this.createdAt;
    }
}

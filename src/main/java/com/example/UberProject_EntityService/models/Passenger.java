package com.example.UberProject_EntityService.models;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Passenger extends BaseModel{

    private String name;

    private String phoneNumber;

    private String email;

    private String password;

    @OneToMany(mappedBy = "passenger", fetch = FetchType.LAZY)
    private List<Booking> bookings = new ArrayList<>();

    @OneToOne
    private Booking activeBooking;

    @OneToOne
    private ExactLocation lastLocation;

    @OneToOne
    private ExactLocation home;

    @DecimalMin(value = "0.00", message = "rating must be greater than or equal to 0.00")
    @DecimalMax(value="5.00" , message = "rating must be less than or equal to 5.00")
    private Double rating;

}

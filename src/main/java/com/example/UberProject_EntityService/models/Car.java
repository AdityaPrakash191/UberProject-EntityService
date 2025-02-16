package com.example.UberProject_EntityService.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Car extends BaseModel{

    @Column(unique = true,nullable = false)
    private String plateNumber;

    private String brand;

    @ManyToOne
    private Colour colour;

    private String model;

    @Enumerated(value = EnumType.STRING)
    private CarType carType;

    @OneToOne
    private Driver driver;
}

package com.example.energyme;

public class Building {

    private Integer numTenants;
    private Integer buildingEnergyCapacity;
    private String buildingName;
    private String buildingKey;

    private double buildingEnergyConsumption;
    private double buildingEnergyProduction;

    public Building(Integer numTenants, Integer buildingEnergyCapacity, String buildingName, String buildingKey, double buildingEnergyConsumption, double buildingEnergyProduction) {
        this.numTenants = 120;
        this.buildingEnergyCapacity = 400;
        this.buildingName = buildingName;
        this.buildingKey = buildingKey;
        this.buildingEnergyConsumption = buildingEnergyConsumption;
        this.buildingEnergyProduction = buildingEnergyProduction;
    }
}

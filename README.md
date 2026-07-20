# ETL GYM - SQL Server Integration Services (SSIS)

## Description

ETL project developed with **SQL Server Integration Services (SSIS)** to extract, transform, and load gym data from a CSV dataset into SQL Server.

The process extracts data from a CSV file, performs data type conversions, generates a derived column (**AlertaSalud**) based on the Body Mass Index (BMI), and stores the transformed data in a SQL Server database for further analysis.

---

## Technologies Used

- SQL Server
- SQL Server Integration Services (SSIS)
- SQL Server Management Studio (SSMS)
- Visual Studio 2022
- CSV Dataset

---

## ETL Workflow

1. Read data from the CSV file.
2. Convert data types to match the SQL Server schema.
3. Generate the derived column **AlertaSalud** based on BMI.
4. Load the transformed records into the **AnalisisGym** table.

---

## Database

The project uses the following database:

**Database:** `BD_GYM`

### AnalisisGym

Stores the transformed gym data loaded from the CSV file.

Main fields include:

- Age
- Gender
- WeightKg
- BMI
- SessionDuration
- CaloriesBurned
- MaxBPM
- AvgBPM
- WorkoutType
- ExerciseName
- TargetMuscleGroup
- DifficultyLevel
- DietType
- Calories
- Carbs
- Proteins
- Fats
- ExperienceLevel
- EquipmentNeeded
- BurnsCalories30Min
- AlertaSalud

---

## Derived Column

A derived column named **AlertaSalud** was created to classify users according to their Body Mass Index (BMI).

| BMI Range | Health Status |
|-----------|---------------|
| < 18.5 | Bajo peso |
| 18.5 – 24.9 | Saludable |
| 25.0 – 29.9 | Sobrepeso |
| ≥ 30.0 | Obesidad |

# 🏋️ ETL GYM - SQL Server Integration Services (SSIS)

ETL project developed with **SQL Server Integration Services (SSIS)** that extracts gym data from a CSV dataset, transforms the information, and loads it into **SQL Server** for analysis and reporting.

---

## 🚀 Features

- Import data from CSV files.
- Data type conversion.
- BMI classification using a Derived Column.
- Load transformed records into SQL Server.
- Ready for reporting and data analysis.

---

## 🛠 Technologies

- SQL Server
- SQL Server Integration Services (SSIS)
- SQL Server Management Studio (SSMS)
- Visual Studio 2022
- CSV Dataset

---

## 🔄 ETL Process

```text
CSV Dataset
      │
      ▼
Data Conversion
      │
      ▼
Derived Column
(AlertaSalud)
      │
      ▼
SQL Server
(BD_GYM → AnalisisGym)
```

---

## 🗄 Database

**Database:** `BD_GYM`

**Table:** `AnalisisGym`

### Stored Fields

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

## 🧮 BMI Classification

| BMI | Health Status |
|------|---------------|
| < 18.5 | Underweight |
| 18.5 – 24.9 | Healthy |
| 25.0 – 29.9 | Overweight |
| ≥ 30.0 | Obesity |

---

## ▶️ How to Run

1. Open the solution in **Visual Studio 2022**.
2. Restore the SQL Server database (`BD_GYM`).
3. Update the SQL Server connection if necessary.
4. Execute the SSIS package.
5. Verify the loaded data in the `AnalisisGym` table.

---

## 👨‍💻 Author

Developed by **HereticSoba**

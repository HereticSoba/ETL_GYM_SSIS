CREATE DATABASE BD_GYM;
GO

USE BD_GYM;
GO

CREATE TABLE AnalisisGym
(
	Id INT IDENTITY(1,1) PRIMARY KEY,

	--RF1 Perfil físico
	Age DECIMAL(5,2),
	Gender VARCHAR(20),
	WeigthKg DECIMAL(5,2),
	BMI DECIMAL(5,2),

	--RF2 Rendimiento
	SessionDuration DECIMAL(4,2),
	CaloriesBurned DECIMAL(7,2),
	
	--RF3 Intensidad Cardiaca
	MaxBPM INT,
	AvgBPM INT,

	--RF4 Tipo de Entrenamiento
	WorkoutType VARCHAR(50),
	ExerciseName VARCHAR(100),
	TargetMuscleGroup VARCHAR(100),

	--RF5 Nivel de Dificultad
	DifficultyLevel VARCHAR(30),

	--RF6 Analisis Nutricional
	DietType VARCHAR(50),
	Calories DECIMAL(7,2),
	Carbs DECIMAL(6,2),
	Proteins DECIMAL(6,2),
	Fats DECIMAL(6,2),

	--RF7 Filtrado
	ExperienceLevel VARCHAR(50),

	--RF8 Equipamiento
	EquipmentNeeded VARCHAR(100),

	--RF9 Eficiencia Calorica
	BurnsCalories30Min DECIMAL(6,2),

	--RF10 Alertas(DERIVADA SSIS)
	AlertaSalud VARCHAR(50),
);
GO

SELECT * FROM AnalisisGym;


/*Columna Age tiene los datos en decimales, pero lo normal es que sean int,
mientras lo dejamos en decimal entonces*/

ALTER TABLE AnalisisGym
ALTER COLUMN Age DECIMAL(5,2);
GO

/*Tambien en maxbpm, avgbpm (estaban int) y experiencelevel (estaba varchar 50)*/
ALTER TABLE AnalisisGym
ALTER COLUMN MaxBPM DECIMAL(6,2);

ALTER TABLE AnalisisGym
ALTER COLUMN AvgBPM DECIMAL(6,2);

ALTER TABLE AnalisisGym
ALTER COLUMN ExperienceLevel DECIMAL(3,2);
GO

/*Generaba problemas al ejecutar el ETL, se cambió a NVARCHAR*/
ALTER TABLE AnalisisGym
ALTER COLUMN AlertaSalud NVARCHAR(50);

sp_help AnalisisGym;

SELECT COUNT(*)
FROM AnalisisGym;

SELECT TOP 10 *
FROM AnalisisGym;
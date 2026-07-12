CREATE DATABASE BD_GYM;
GO

USE BD_GYM;
GO

CREATE TABLE AnalisisGym
(
	Id INT IDENTITY(1,1) PRIMARY KEY,

	--RF1 Perfil físico
	Age DECIMAL(5,2),
	Gender VARCHAR(50),
	WeigthKg DECIMAL(5,2),
	BMI DECIMAL(5,2),

	--RF2 Rendimiento
	SessionDuration DECIMAL(4,2),
	CaloriesBurned DECIMAL(7,2),
	
	--RF3 Intensidad Cardiaca
	MaxBPM DECIMAL(6,2),
	AvgBPM DECIMAL(6,2),

	--RF4 Tipo de Entrenamiento
	WorkoutType VARCHAR(50),
	ExerciseName VARCHAR(100),
	TargetMuscleGroup VARCHAR(100),

	--RF5 Nivel de Dificultad
	DifficultyLevel VARCHAR(50),

	--RF6 Analisis Nutricional
	DietType VARCHAR(50),
	Calories DECIMAL(7,2),
	Carbs DECIMAL(6,2),
	Proteins DECIMAL(6,2),
	Fats DECIMAL(6,2),

	--RF7 Filtrado
	ExperienceLevel DECIMAL(3,2),

	--RF8 Equipamiento
	EquipmentNeeded VARCHAR(100),

	--RF9 Eficiencia Calorica
	BurnsCalories30Min DECIMAL(6,2),

	--RF10 Alertas(DERIVADA SSIS)
	AlertaSalud NVARCHAR(50),
);
GO

SELECT * FROM AnalisisGym;

/*Ejecutar antes de iniciar el SSIS, para que se duplique la data*/
TRUNCATE TABLE AnalisisGym;

/* info de las columnas*/
sp_help AnalisisGym;

/*Ver el total de registros, y un nombre arriba por placer xd */
SELECT COUNT(*) AS Total_Registros
FROM AnalisisGym;

/* Top 10 primeras de las tablas*/
SELECT TOP 10 *
FROM AnalisisGym;
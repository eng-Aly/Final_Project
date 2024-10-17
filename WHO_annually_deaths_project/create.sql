IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 FIRST_ROW = 2,
			 USE_TYPE_DEFAULT = FALSE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'dataset_finalproject111_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [dataset_finalproject111_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://dataset@finalproject111.dfs.core.windows.net' 
	)
GO

CREATE EXTERNAL TABLE AnnuallyDeaths (
	[Entity] nvarchar(4000),
	[Code] nvarchar(4000),
	[Year] bigint,
	[Number of executions (Amnesty International)] bigint,
	[Deaths - Meningitis - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Alzheimer's disease and other dementias - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Parkinson's disease - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Nutritional deficiencies - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Malaria - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Drowning - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Interpersonal violence - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Maternal disorders - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - HIV/AIDS - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Drug use disorders - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Tuberculosis - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Cardiovascular diseases - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Lower respiratory infections - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Neonatal disorders - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Alcohol use disorders - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Self-harm - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Exposure to forces of nature - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Diarrheal diseases - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Environmental heat and cold exposure - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Neoplasms - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Conflict and terrorism - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Diabetes mellitus - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Chronic kidney disease - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Poisonings - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Protein-energy malnutrition - Sex: Both - Age: All Ages (Number)] bigint,
	[Terrorism (deaths)] bigint,
	[Deaths - Road injuries - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Chronic respiratory diseases - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Cirrhosis and other chronic liver diseases - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Digestive diseases - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Fire, heat, and hot substances - Sex: Both - Age: All Ages (Number)] bigint,
	[Deaths - Acute hepatitis - Sex: Both - Age: All Ages (Number)] bigint
	)
	WITH (
	LOCATION = 'annual-number-of-deaths-by-cause.csv',
	DATA_SOURCE = [dataset_finalproject111_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
GO


SELECT TOP 100 * FROM AnnuallyDeaths
GO

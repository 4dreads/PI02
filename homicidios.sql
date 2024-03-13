WITH HomicidiosSemestrales AS (
    SELECT 
        YEAR(Fecha) AS Anio,
        CASE WHEN MONTH(Fecha) BETWEEN 1 AND 6 THEN 1 ELSE 2 END AS Semestre,
        SUM(N_VICTIMAS) AS TotalHomicidios
    FROM SiniestrosViales_Homicidios
    GROUP BY Anio, Semestre
)

SELECT 
    HomicidiosSemestrales.Anio, 
    Semestre,
    TotalHomicidios,
    TotalHomicidios / PoblacionCABA.PoblacionTotal * 100000 AS TasaHomicidios 
FROM HomicidiosSemestrales
JOIN PoblacionCABA ON HomicidiosSemestrales.Anio = PoblacionCABA.Anio
WHERE Semestre = 2;


WITH AccidentesMortalesMotociclistas AS (
    SELECT 
        YEAR(FECHA) AS Anio,
        COUNT(*) AS CantidadAccidentes
    FROM SiniestrosViales_Homicidios
    WHERE VICTIMA = 'MOTO' AND N_VICTIMAS > 0
    GROUP BY Anio
)

SELECT 
    Actual.Anio AS AnioActual,
    Actual.CantidadAccidentes AS AccidentesActual,
    Anterior.Anio AS AnioAnterior,
    Anterior.CantidadAccidentes AS AccidentesAnterior,
    (Actual.CantidadAccidentes - Anterior.CantidadAccidentes) / Anterior.CantidadAccidentes * 100 AS ReduccionPorcentaje
FROM AccidentesMortalesMotociclistas Actual
JOIN AccidentesMortalesMotociclistas Anterior ON Actual.Anio = Anterior.Anio + 1;

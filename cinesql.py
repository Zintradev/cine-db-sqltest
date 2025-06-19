import mysql.connector
from mysql.connector import Error

def conectar_bd():
    try:
        conexion = mysql.connector.connect(
            host='localhost',
            database='cine', #your database
            user='root',       
            password=''        
        )
        if conexion.is_connected():
            print("Conexión exitosa a la base de datos")
            return conexion
    except Error as e:
        print(f"Error al conectar a MySQL: {e}")
        return None

def obtener_peliculas():
    conexion = conectar_bd()
    if conexion:
        try:
            cursor = conexion.cursor(dictionary=True)
            cursor.execute("SELECT * FROM peliculas ORDER BY titulo")
            peliculas = cursor.fetchall()
            
            print("\nListado de Películas:")
            for pelicula in peliculas:
                print(f"{pelicula['id_pelicula']}: {pelicula['titulo']} ({pelicula['genero']})")
            
            return peliculas
        except Error as e:
            print(f"Error al ejecutar consulta: {e}")
        finally:
            if conexion.is_connected():
                cursor.close()
                conexion.close()

def ventas_por_pelicula():
    conexion = conectar_bd()
    if conexion:
        try:
            cursor = conexion.cursor(dictionary=True)
            query = """
            SELECT p.titulo, COUNT(e.id_entrada) as entradas_vendidas, SUM(e.precio) as total_ventas
            FROM peliculas p
            JOIN emisiones em ON p.id_pelicula = em.id_pelicula
            JOIN entradas e ON em.id_emision = e.id_emision
            GROUP BY p.titulo
            ORDER BY total_ventas DESC
            """
            cursor.execute(query)
            resultados = cursor.fetchall()
            
            print("\nVentas por Película:")
            for fila in resultados:
                print(f"{fila['titulo']}: {fila['entradas_vendidas']} entradas, Total: ${fila['total_ventas']:.2f}")
            
            return resultados
        except Error as e:
            print(f"Error al ejecutar consulta: {e}")
        finally:
            if conexion.is_connected():
                cursor.close()
                conexion.close()

# Ejemplo de uso
if __name__ == "__main__":
    obtener_peliculas()
    ventas_por_pelicula()
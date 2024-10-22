# Usar una imagen oficial de Jupyter con Python
FROM jupyter/scipy-notebook:latest

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /home/jovyan/work

# Copiar archivos del proyecto al contenedor
COPY . /home/jovyan/work

# Instalar dependencias
RUN pip install --no-cache-dir joblib scikit-learn pandas matplotlib seaborn

# Exponer el puerto 8888 para acceder a Jupyter Lab
EXPOSE 8888

# Ejecutar Jupyter Lab automáticamente
CMD ["start.sh", "jupyter", "lab", "--allow-root"]

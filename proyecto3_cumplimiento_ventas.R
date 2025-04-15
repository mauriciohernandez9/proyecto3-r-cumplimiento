install.packages("ggplot2")
# Proyecto 3: Cumplimiento de Ventas vs Presupuesto por Producto
# Autor: Héctor Mauricio Hernández Olvera

# Librerías
library(ggplot2)

# Datos simulados
producto <- c("Termómetro", "Guantes", "Cubrebocas", "Gel", "Oxímetro")
ventas <- c(60000, 1275, 1200, 2000, 14000)
presupuesto <- c(50000, 1500, 2000, 2500, 15000)

# Crear data frame
df <- data.frame(Producto = producto, Ventas = ventas, Presupuesto = presupuesto)

# Calcular % de cumplimiento
df$Cumplimiento <- round((df$Ventas / df$Presupuesto) * 100, 1)

# Mostrar tabla
print(df)

# Graficar
ggplot(df, aes(x = Producto, y = Cumplimiento, fill = Producto)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = paste0(Cumplimiento, "%")), vjust = -0.5) +
  labs(title = "Cumplimiento por Producto",
       y = "% de Cumplimiento",
       x = "Producto") +
  theme_minimal()

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ComponentStatus.create(name: 'Operacional', description: 'Este componente está en pleno funcionamiento y no está experimentando ningún problema de rendimiento o disponibilidad.', color: '2ECC71')
ComponentStatus.create(name: 'Rendimiento Degradado', description: 'Este componente está funcionando según lo previsto, pero está experimentando problemas de desempeño (ejemplo: base de datos está lenta).', color: 'F1C40F')
ComponentStatus.create(name: 'Interrupción Parcial', description: 'Este componente está parcialmente detenido o está experimentando una interrupción, sólo afecta a un pequeño porcentaje de los componentes (ejemplo: 1 de 25 servidores de archivos sin conexión).', color: 'E67E22')
ComponentStatus.create(name: 'Interrupción Mayor', description: 'Este componente está completamente detenido o está experimentando grandes interrupciones de disponibilidad.', color: 'E74C3C')

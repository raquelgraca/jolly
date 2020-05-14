class Address < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :address_holder, polymorphic: true

  NEIGHBOURHOOD = ["Abolição", "Acari", "Água Santa", "Aldeia Campista", "Alto da Boa Vista", "Anchieta", "Andaraí", "Anil", "Bancários", "Bangu", "Barra da Tijuca", "Barra de Guaratiba", "Barros Filho", "Benfica", "Bento Ribeiro", "Bonsucesso", "Botafogo", "Brás de Pina", "Cachambi", "Cacuia", "Caju", "Camorim", "Campinho", "Campo dos Afonsos", "Campo Grande", "Cantagalo–Pavão–Pavãozinho", "Cascadura", "Catete", "Catumbi", "Cavalcanti", "Centro", "Cidade de Deus", "Cidade Nova", "Cidade Universitária", "Cocotá", "Coelho Neto", "Colégio", "Complexo do Alemão", "Copacabana", "Cordovil", "Cosme Velho", "Cosmos", "Costa Barros", "Curicica", "Del Castilho", "Deodoro", "Encantado", "Engenheiro Leal", "Engenho da Rainha", "Engenho de Dentro", "Engenho Novo", "Estácio", "Fazenda da Bica", "Flamengo", "Freguesia (Ilha do Governador)", "Freguesia (Jacarepaguá)", "Galeão", "Gamboa", "Gardênia Azul", "Gávea", "Gericinó", "Glória", "Grajaú", "Grumari", "Guadalupe", "Guaratiba" "Higienópolis", "Honório Gurgel", "Humaitá", "Imperial de São Cristóvão", "Inhaúma", "Inhoaíba", "Ipanema", "Irajá", "Itanhangá", "Jacaré", "Jacarepaguá", "Jacarezinho", "Jardim América", "Jardim Botânico", "Jardim Carioca", "Jardim Guanabara", "Jardim Sulacap", "Joá", "Lagoa", "Lapa", "Laranjeiras", "Largo do Boticário", "Leblon", "Leme", "Lins de Vasconcelos", "Madureira", "Magalhães Bastos", "Mangueira", "Manguinhos", "Maracanã", "Maré", "Marechal Hermes", "Maria da Graça", "Méier", "Moneró", "Morro da Mineira", "Olaria", "Oswaldo Cruz", "Paciência", "Padre Miguel", "Paquetá", "Parada de Lucas", "Parque Anchieta", "Parque Colúmbia", "Parque do Flamengo", "Pavuna", "Pechincha", "Pedra de Guaratiba", "Penha Circular", "Penha", "Península", "Piedade", "Pilares", "Pitangueiras", "Portuguesa", "Praça da Bandeira", "Praça Seca", "Praia da Bandeira", "Quintino Bocaiuva", "Ramos","Realengo", "Recreio dos Bandeirantes", "Riachuelo", "Ribeira", "Ricardo de Albuquerque", "Rio Comprido", "Rocha Miranda", "Rocha", "Rocinha", "Sampaio", "Santa Cruz", "Santa Teresa", "Santíssimo", "Santo Cristo", "São Conrado", "São Francisco Xavier", "Saúde", "Senador Camará", "Senador Vasconcelos", "Sepetiba", "Tanque", "Taquara", "Tauá", "Tavares Bastos", "Tijuca", "Todos os Santos", "Tomás Coelho", "Turiaçu", "Urca", "Vargem Grande", "Vargem Pequena", "Vasco da Gama", "Vaz Lobo", "Vicente de Carvalho", "Vidigal", "Vigário Geral", "Vila Cosmos", "Vila da Penha", "Vila Isabel", "Vila Militar", "Vila Valqueire", "Vista Alegre", "Zumbi"]
  CITY = ["Rio de Janeiro"]
  STATE = ["RJ"]

  validates :name, presence: true
  validates :street, presence: true
  validates :street_number, presence: true
  validates :neighbourhood, presence: true, inclusion: { in: NEIGHBOURHOOD }
  validates :city, presence: true, inclusion: { in: CITY }
  validates :state, presence: true, inclusion: { in: STATE }
  validates :zip_code, presence: true

  def full_address
    street + ", " + street_number + " - " + neighbourhood + ", " + city + " - " + state + ", " + zip_code + ", Brasil"
  end
end

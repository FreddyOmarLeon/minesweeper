class CreateJuegos < ActiveRecord::Migration[5.1]
  def change
    create_table :juegos do |t|
      t.integer :Usuario
      t.string :estatusJuego
      t.boolean :ResultadoJuego

      t.timestamps
    end
  end
end

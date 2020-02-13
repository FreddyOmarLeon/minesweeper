class CreateJuegoParametros < ActiveRecord::Migration[5.1]
  def change
    create_table :juego_parametros do |t|
      t.integer :NumColumna
      t.integer :NumFila
      t.integer :numMinas

      t.timestamps
    end
  end
end

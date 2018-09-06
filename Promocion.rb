class Promocion
	attr_accessor :cantidad_en_promocion
	attr_accessor :fecha_vigencia
	attr_accessor :cantidad_minima
	attr_accessor :precio_minimo

	def initialize (x)
		@cantidad_en_promocion=x;
	end
	
	def set_cantidad_en_promocion ()
		puts @cantidad_en_promocion;
	end

	def set_fecha_vigencia ()
		puts @fecha_vigencia;
	end

	def set_cantidad_minima ()
		puts @cantidad_minima;
	end

	def set_cantidad_minima ()
		puts @precio_minimo;
	end

end

promo=Promocion.new("5")
promo.set_cantidad_en_promocion



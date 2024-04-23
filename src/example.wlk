object gimenez {
	var dinero= 3000000
	
	method pagarA(empleado){
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}


object galvan {
	var sueldo = 150000
	var deuda = 0
	var dinero = 0
	
	method sueldoNuevo(num){
		sueldo = num
	}
	
	method sueldo() = sueldo
	
	method cobrarSueldo(){
		dinero += self.sueldo()
	}
	
	method dinero() = dinero
	
	method pagarDeuda(){
		if(dinero >= deuda){
			dinero-= deuda
			deuda = 0
		}
		else{
			deuda -= dinero
			dinero = 0
		}
	}
	
	method gastarDinero(num){
		if (0.max(self.dinero() - num) > 0){
			dinero -= num
		}
		else{
			deuda += num
		}
	}
	
	method totalDeuda() = deuda
	
	method totalCobrado(){
		
	}
	
	
}

object baigorria {
	var empanadasVendidas = 0
	var totalCobrado = 0
	
	method sueldo()= 150 * empanadasVendidas
	
	method cobrarSueldo(){
		totalCobrado += self.sueldo()
	}
	
	method empandasVendidas(num) {
		empanadasVendidas = num 
	}
	
	method totalCobrado() = totalCobrado
}
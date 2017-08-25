package questao1;

public class Q1 {
	
	public static void main(String[] args) {
		
		Buffer bufferComp = new Buffer();
		
		int idP1 = 1;
		int idP2 = 2;
		
		int idC1 = 1;
		int idC2 = 2;
		
		int	producaoTotalP1	=	2;
		int	producaoTotalP2	=	3;
		int	totalConsumirC1	=	2;
		int	totalConsumirC2	=   2;
		
		
		Producer produtor1 = new Producer(idP1,	bufferComp, producaoTotalP1);
		Producer produtor2 = new Producer(idP2,	bufferComp, producaoTotalP2);
		
		Consumer consumidor1 = new Consumer(idC1, bufferComp, totalConsumirC1);
		Consumer consumidor2 = new Consumer(idC2, bufferComp, totalConsumirC2);
	
		produtor1.start();
	    consumidor1.start();
	    produtor2.start();
	    consumidor2.start();
	
	}
}

package questao1;

public class Producer extends Thread{
	
	private int idProducer;
	private Buffer stack;
	private int productionTotal;

	public Producer(int id, Buffer p, int producaoTotal) {
		idProducer = id;
		stack = p;
		this.productionTotal = producaoTotal;
	}

	public void run() {
		for (int i = 1; i <= productionTotal; i++) {
			stack.set(idProducer, i);
		}
		System.out.println("Producer #" + idProducer + " finished!");
	}

	
}
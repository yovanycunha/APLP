package questao1;

public class Consumer extends Thread{

	private int idConsumer;
	private Buffer stack;
	private int totalConsumir;

	public Consumer(int id, Buffer p, int totalConsumir) {
		idConsumer = id;
		stack = p;
		this.totalConsumir = totalConsumir;
	}

	public void run() {
		for (int i = 1; i <= totalConsumir; i++) {
			stack.get(idConsumer);
		}
		System.out.println("Consumer #" + idConsumer + " finished!");
	}

}

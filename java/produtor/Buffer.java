package questao1;

public class Buffer {
 
    private int content;
    private boolean available;
 
    public synchronized void set(int idProdutor, int valor) {
        while (available == true) {
            try {
                System.out.println("Producer #" + idProdutor + " waiting...");
                wait();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        content = valor;
        System.out.println("Producer #" + idProdutor + " put product #" + content);
        available = true;
        notifyAll();
    }
 
    public synchronized int get(int idConsumidor) {
        while (available == false) {
            try {
                System.out.println("Consumidor #" + idConsumidor
                        + " waiting...");
                wait();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        System.out.println("Consumer #" + idConsumidor + " consumed: product #" + content);
        available = false;
        notifyAll();
        return content;
    }
}
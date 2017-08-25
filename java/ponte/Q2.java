package questao2;

public class Q2 extends Thread{

	public Q2() {
		super();
	}
	
	private void carro(String string) {
		if (string.equals("A"))	System.out.println("Passando carro A --> B");
		if (string.equals("B"))	System.out.println("Passando carro B --> A");
	}

	public	static	void	main(String[]	args)	{
		Q2	p	=	new	Q2();
		p.carro("A");
		p.carro("B");
		p.carro("A");
	}
}



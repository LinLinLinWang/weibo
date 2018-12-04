package version_3_1;

public class Excrise {
	
	private static final short OPERATION_NUMBER=50;
	private static final short COLUMN_NUMBER=5;
	private BinaryOperation[] bo =new BinaryOperation[OPERATION_NUMBER];
	
	public void generateBinaryExercrise() {
		BinaryOperation anOperation;
		BinaryOperation opCreator=new BinaryOperation();
		
		for (int i = 0; i < OPERATION_NUMBER; i++) {
			anOperation=opCreator.generateBinaryOperation();
			while(contains(anOperation, i-1)) {
				anOperation=opCreator.generateBinaryOperation();
			}
			bo[i]=anOperation;
		}
	}
	
	public void generateAdditionExercrise() {
		BinaryOperation anOperation;
		BinaryOperation opCreator=new BinaryOperation();
		
		for (int i = 0; i < OPERATION_NUMBER; i++) {
			anOperation=opCreator.generateAdditionOperation();
			while(contains(anOperation, i-1)) {
				anOperation=opCreator.generateAdditionOperation();
			}
			bo[i]=anOperation;
		}
	}
	
	public void generateSubstractExercrise() {
		BinaryOperation anOperation;
		BinaryOperation opCreator=new BinaryOperation();
		
		for (int i = 0; i < OPERATION_NUMBER; i++) {
			anOperation=opCreator.generateSubstractOperation();
			while(contains(anOperation, i-1)) {
				anOperation=opCreator.generateSubstractOperation();
			}
			bo[i]=anOperation;
		}
	}
	
	private boolean contains(BinaryOperation anOperation,int length) {
		boolean found=false;
		for (int i = 0; i <length; i++) {
			if(anOperation.equals(bo[i])) {
				found=true;
				break;
			}
		}
		
		return found;
	}
	
	public void formatAndDisplay() {
		for (int i = 0; i < bo.length; i++) {
			System.out.print(bo[i].fullString());
			System.out.print("    ");
			if((i+1)% COLUMN_NUMBER==0) {
				System.out.println();
			}
		}
	}
}

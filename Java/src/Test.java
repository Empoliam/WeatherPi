import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Test 
{

	public static void main(String[] args) 
	{
		
		try {
			BufferedReader br = new BufferedReader(new FileReader("/sys/bus/w1/devices/28-0000075c293f/w1_slave"));
			br.readLine();
			System.out.println(br.readLine().split(" ")[9]);
			br.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}

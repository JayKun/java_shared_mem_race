import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.Semaphore;
class SemBetter implements State {
    private byte[] value;
    private byte maxval;
    private Semaphore available = new Semaphore(1);
 
    SemBetter(byte[] v) { 
	value = v; maxval = 127; }

    SemBetter(byte[] v, byte m) { value = v; maxval = m; }

    public int size() { return value.length; }

    public byte[] current() { 
		return value;
    }
	
    public boolean swap(int i, int j) {
	try{
	available.acquire();
	if (value[i] <= 0 || value[j] >= maxval) {
	    available.release();
	    return false;
	}
	
	value[i]--;
	value[j]++;
	}
	catch(InterruptedException exc) {
            System.out.println(exc);
        }
	available.release();
	return true;
    }
}

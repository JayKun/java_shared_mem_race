import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
class BetterSafe implements State {
    private byte[] value;
    private byte maxval;
    private final ReentrantLock fLock = new ReentrantLock();
    
    BetterSafe(byte[] v) { 
	value = v; maxval = 127; }

    BetterSafe(byte[] v, byte m) { value = v; maxval = m; }

    public int size() { return value.length; }

    public byte[] current() { 
		return value;
    }
	
    public boolean swap(int i, int j) {
	fLock.lock();
	if (value[i] <= 0 || value[j] >= maxval) {
	    fLock.unlock();
	    return false;
	}

	value[i]--;
	value[j]++;
	fLock.unlock();
	return true;
    }
}

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
class BetterSafeRW implements State {
    private byte[] value;
    private byte maxval;
    private final ReentrantReadWriteLock fLock = new ReentrantReadWriteLock();
    //private final ReentrantLock fLock = new ReentrantLock();
    private final Lock fReadLock = fLock.readLock();
    private final Lock fWriteLock = fLock.writeLock();
    
    BetterSafeRW(byte[] v) { 
	value = v; maxval = 127; }

    BetterSafeRW(byte[] v, byte m) { value = v; maxval = m; }

    public int size() { return value.length; }

    public byte[] current() { 
		return value;
    }
	
    public boolean swap(int i, int j) {
	fReadLock.lock();
	if (value[i] <= 0 || value[j] >= maxval) {
	    fReadLock.unlock();
	    return false;
	}
	fReadLock.unlock();

	fWriteLock.lock();
	value[i]--;
	value[j]++;
	fWriteLock.unlock();
	return true;
    }
}

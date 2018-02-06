import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
class BetterSafe implements State {
    private byte[] value;
    private byte maxval;
    private final ReentrantReadWriteLock fLock = new ReentrantReadWriteLock();
    private final Lock fReadLock = fLock.readLock();
    private final Lock fWriteLock = fLock.writeLock();
    
    BetterSafe(byte[] v) { 
	value = v; maxval = 127; }

    BetterSafe(byte[] v, byte m) { value = v; maxval = m; }

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

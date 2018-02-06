import java.lang.invoke.VarHandle;
class VarBetter implements State {
    private byte[] value;
    private byte maxval;
    private final ReentrantLock fLock = new ReentrantLock();
    VarHandle arrayVarHandle = MethodHandles.arrayElementVarHandle(byte[].class);
    VarBetter(byte[] v) { 
	value = v; maxval = 127; }

    VarBetter(byte[] v, byte m) { value = v; maxval = m; }

    public int size() { return value.length; }

    public byte[] current() { 
		return value;
    }
	
    public boolean swap(int i, int j) {
	if (value[i] <= 0 || value[j] >= maxval) {
	    return false;
	}

	value[i]--;
	value[j]++;
	return true;
    }
}

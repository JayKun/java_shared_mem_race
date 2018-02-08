import  java.util.concurrent.atomic.AtomicIntegerArray;

class GetNSet implements State{
	private AtomicIntegerArray m_array;
	private byte maxval;

	public byte[] current(){
		byte [] res = new byte[m_array.length()];
		for(int i=0; i<m_array.length(); i++){
			res[i] = (byte)(m_array.get(i));
		}
		return res;
		
	}
	public GetNSet(byte[] v, byte m){
		int [] array = new int[v.length];
		for(int i=0; i<v.length; i++){
			array[i]=v[i];
		} 
		m_array = new AtomicIntegerArray(array);
		maxval = m;
	}
	
	public GetNSet(byte[] v){
		maxval = 127;
		int [] array = new int[v.length];
		for(int i=0; i<v.length; i++){
			array[i]=v[i];
		} 
		m_array = new AtomicIntegerArray(array);
	}	

	public int size(){
		return m_array.length();
	}
	public boolean swap(int i, int j){
		if(m_array.get(i)<=0 || m_array.get(j)>=maxval){
			return false;
		}
		m_array.getAndDecrement(i);
		m_array.getAndIncrement(j);
		return true;
	}
}

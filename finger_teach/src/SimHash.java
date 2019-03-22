
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.StringTokenizer;

import com.sun.javafx.collections.MappingChange.Map;
public class SimHash {
    private HashMap<String, String> tokens;
    private int strnum = 0;
    public BigInteger strSimHash;
    private int hashbits = 128;
    public SimHash(HashMap<String, String> tokens) throws IOException {
        this.tokens = tokens;
        this.strSimHash = this.simHash();
    }
    public SimHash(HashMap<String, String> tokens, int hashbits) throws IOException {
        this.tokens = tokens;
        this.strnum = strnum;
        this.hashbits = hashbits;
        this.strSimHash = this.simHash();
    }
    public BigInteger simHash() throws IOException {
    	//preprocess the weight.txt
    	String s = null;
    	String[][] ssplit = new String[100][5];
    	BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\11394\\Desktop\\mysimhash\\weight.txt"));
    	int weightnum = 0;
    	while((s = br.readLine()) != null) {
    		ssplit[weightnum++] = s.split(":");
    	}
    	br.close();
    	
    	//add all the data information from the data.txt
    	//int index = 0;
    	int[] v = new int [this.hashbits];
//        while ( index<this.strnum ) {
//        	String[] tokenssplit = this.tokens[index].split(":");
    	for(String key:tokens.keySet()) {
            BigInteger t = this.hash(tokens.get(key));
            
            //get the weight
            int j = 0;
            int weight = 1;
            while(j < weightnum) {
            	if(ssplit[j][0].equals(key)) {
            		weight = Integer.valueOf(ssplit[j][1]);
            		break;
            	}
            	j++;
            }
            br.close();
            
            //add the weight
            for (int i = 0; i < this.hashbits; i++) {
                BigInteger bitmask = new BigInteger("1").shiftLeft(i);
                 if (t.and(bitmask).signum() != 0) {
                    v[i] += 1*weight;
                } else {
                    v[i] -= 1*weight;
                }
            }
            //index ++;
        }
        BigInteger fingerprint = new BigInteger("0");
        for (int i = 0; i < this.hashbits; i++) {
            if (v[i] >= 0) {
                fingerprint = fingerprint.add(new BigInteger("1").shiftLeft(i));
            }
        }
        return fingerprint;
    }
    private BigInteger hash(String source) {
        if (source == null || source.length() == 0) {
            return new BigInteger("0");
        } else {
            char[] sourceArray = source.toCharArray();
            BigInteger x = BigInteger.valueOf(((long) sourceArray[0]) << 7);
            BigInteger m = new BigInteger("1000003");
            BigInteger mask = new BigInteger("2").pow(this.hashbits).subtract(
                    new BigInteger("1"));
            for (char item : sourceArray) {
                BigInteger temp = BigInteger.valueOf((long) item);
                x = x.multiply(m).xor(temp).and(mask);
            }
            x = x.xor(new BigInteger(String.valueOf(source.length())));
            if (x.equals(new BigInteger("-1"))) {
                x = new BigInteger("-2");
            }
            return x;
        }
    }
    public int hammingDistance(SimHash other) {
        BigInteger m = new BigInteger("1").shiftLeft(this.hashbits).subtract(
                new BigInteger("1"));
        BigInteger x = this.strSimHash.xor(other.strSimHash).and(m);
        int tot = 0;
         while (x.signum() != 0) {
            tot += 1;
            x = x.and(x.subtract(new BigInteger("1")));
        }
        return tot;
    }
    
    
    /*
	public static void main(String[] args) throws IOException {
        /*String s = "This is a test string for testing";
        SimHash hash1 = new SimHash(s, 128);
        System.out.println(hash1.strSimHash + "  " + hash1.strSimHash.bitLength());
        s = "This is a test string for testing also";
        SimHash hash2 = new SimHash(s, 128);
        System.out.println(hash2.strSimHash+ "  " + hash2.strSimHash.bitCount());
        s = "This is a test string for testing als";
        SimHash hash3 = new SimHash(s, 128);
        System.out.println(hash3.strSimHash+ "  " + hash3.strSimHash.bitCount());
        System.out.println("============================");
        System.out.println(hash1.hammingDistance(hash2));
        System.out.println(hash1.hammingDistance(hash3));*/
    /*
    	BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\11394\\Desktop\\mysimhash\\data.txt"));
    	int index = 0;
    	String s = null;
    	String[] ss = new String[100];
    	while(( s=br.readLine()) != null ) {
    		ss[index++] = s;
    	}
    	br.close();
    	SimHash hash1 = new SimHash(ss, index, 128);
    	System.out.println(hash1.strSimHash);
    	
    	br = new BufferedReader(new FileReader("C:\\Users\\11394\\Desktop\\mysimhash\\data1.txt"));
    	index = 0;
    	s = null;
    	ss = new String[100];
    	while(( s=br.readLine()) != null ) {
    		ss[index++] = s;
    	}
    	br.close();
    	SimHash hash2 = new SimHash(ss, index, 128);
    	System.out.println(hash2.strSimHash);
    	
    	br = new BufferedReader(new FileReader("C:\\Users\\11394\\Desktop\\mysimhash\\data2.txt"));
    	index = 0;
    	s = null;
    	ss = new String[100];
    	while(( s=br.readLine()) != null ) {
    		ss[index++] = s;
    	}
    	br.close();
    	SimHash hash3 = new SimHash(ss, index, 128);
    	System.out.println(hash3.strSimHash);
    	
    	System.out.println(hash1.hammingDistance(hash2));
    	System.out.println(hash1.hammingDistance(hash3));
    	System.out.println(hash2.hammingDistance(hash3));
    }
    调用直接 SimHash hash2 = new SimHash(ss, 128);
    	System.out.println(hash2.strSimHash);
    */
}
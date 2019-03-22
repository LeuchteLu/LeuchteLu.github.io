
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/**
 * ��������������ת����json�ַ�����ʽ
 */
public class JsonUtil {  
    
    /**
     * ��ڷ���
     * @param obj
     * @return
     */
    public String object2json(Object obj) {
        StringBuilder json = new StringBuilder();  
        if (obj == null) {  
            json.append("\"\"");  
        } else if (obj instanceof String || obj instanceof Integer || obj instanceof Float  
             || obj instanceof Boolean || obj instanceof Short || obj instanceof Double  
             || obj instanceof Long || obj instanceof BigDecimal || obj instanceof BigInteger  
             || obj instanceof Byte) {  
            json.append("\"").append(string2json(obj.toString())).append("\"");  
        } else if (obj instanceof Object[]) {  
            json.append(array2json((Object[]) obj));  
        } else if (obj instanceof List) {  
            json.append(list2json((List<?>) obj));  
        } else if (obj instanceof Map) {  
            json.append(map2json((Map<?, ?>) obj));  
        } else if (obj instanceof Set) {  
            json.append(set2json((Set<?>) obj));  
        } else {  
            json.append(bean2json(obj));  
        }  
        return json.toString();
    }
    
    public String string2json(String s) {  
        if (s == null)  
            return "";  
        StringBuilder sb = new StringBuilder();  
        for (int i = 0; i < s.length(); i++) {  
            char ch = s.charAt(i);  
            switch (ch) {  
                case '"':  
                    sb.append("\\\"");
                    break;
                case '\\':
                     sb.append("\\\\");
                     break;
                 case '\b':
                     sb.append("\\b");
                     break;
                 case '\f':
                     sb.append("\\f");
                     break;
                 case '\n':
                     sb.append("\\n");
                     break;
                 case '\r':
                     sb.append("\\r");
                     break;
                 case '\t':
                     sb.append("\\t");
                     break;
                 case '/':
                     sb.append("\\/");
                     break;
                 default:
                     if (ch >= '\u0000' && ch <= '\u001F') {
                         String ss = Integer.toHexString(ch);
                         sb.append("\\u");
                         for (int k = 0; k < 4 - ss.length(); k++) {
                             sb.append('0');
                         }
                         sb.append(ss.toUpperCase());
                     } else {
                         sb.append(ch);
                     }
            }
        }
        return sb.toString();
    }
    
    public String array2json(Object[] array) {  
        StringBuilder json = new StringBuilder();  
        json.append("[");  
        if (array != null && array.length > 0) {  
            for (Object obj : array) {  
                json.append(object2json(obj));  
                json.append(",");  
            }
            json.setCharAt(json.length() - 1, ']');  
        } else {  
            json.append("]");  
        }  
        return json.toString();
    }
    
    public String list2json(List<?> list) {  
        StringBuilder json = new StringBuilder();  
        json.append("[");  
        if (list != null && list.size() > 0) {  
            for (Object obj : list) {  
                json.append(object2json(obj));  
                json.append(",");  
            }  
            json.setCharAt(json.length() - 1, ']');  
        } else {  
            json.append("]");  
        }  
        return json.toString();
    }
    
    public String map2json(Map<?, ?> map) {  
        StringBuilder json = new StringBuilder();  
        json.append("{");  
        if (map != null && map.size() > 0) {  
            for (Object key : map.keySet()) {  
                json.append(object2json(key));  
                json.append(":");  
                json.append(object2json(map.get(key)));  
                json.append(",");  
            }  
            json.setCharAt(json.length() - 1, '}');  
        } else {  
            json.append("}");  
        }  
        return json.toString();  
    }
    
    public String set2json(Set<?> set) {  
        StringBuilder json = new StringBuilder();  
        json.append("[");  
        if (set != null && set.size() > 0) {  
            for (Object obj : set) {  
                json.append(object2json(obj));  
                json.append(",");  
            }  
            json.setCharAt(json.length() - 1, ']');  
        } else { 
            json.append("]");
        }  
        return json.toString();  
    }
    
    public String bean2json(Object bean) {  
        StringBuilder json = new StringBuilder();  
        json.append("{");  
        PropertyDescriptor[] props = null;  
        try {  
            props = Introspector.getBeanInfo(bean.getClass(), Object.class).getPropertyDescriptors();  
        } catch (IntrospectionException e) {}  
        if (props != null) {  
            for (int i = 0; i < props.length; i++) {  
                try {  
                    String name = object2json(props[i].getName());  
                    String value = object2json(props[i].getReadMethod().invoke(bean));  
                    json.append(name);  
                    json.append(":");  
                    json.append(value);  
                    json.append(",");  
                } catch (Exception e) {}  
            }  
            json.setCharAt(json.length() - 1, '}');  
         } else {  
             json.append("}");  
        }  
         return json.toString();  
    }
    
//    public static void main(String[] args) {
//        List<String> list = new ArrayList<String>();  
//        list.add("one");  
//        list.add("two"); 
//        String s1 = list2json(list);
//        System.out.println("listת����json�ַ���Ϊ��"+s1);//listת����json�ַ���Ϊ��["one","two"]
//        Set<String> set = new HashSet<String>();  
//        set.add("����");  
//        set.add("����");
//        String s2 = set2json(set);
//        System.out.println("setת����json�ַ���Ϊ��"+s2);//setת����json�ַ���Ϊ��["����","����"]
//        Map<String, String> map = new HashMap<String, String>();  
//        map.put("����Сѧ", "����");  
//        map.put("�����ѧ", "���");
//        String s3 = map2json(map);
//        System.out.println("mapת����json�ַ���Ϊ��"+s3);//mapת����json�ַ���Ϊ��{"����Сѧ":"����","�����ѧ":"���"}
//        Integer integer = new Integer(1);
//        String s4 = object2json(integer);
//        System.out.println("integerת����json�ַ���Ϊ��"+s4);//integerת����json�ַ���Ϊ��"1"
//        Student student = new Student();
//        student.setName("hly");
//        student.setAge(22);
//        student.setLove(list);
//        student.setSchool(map);
//        String s5 = bean2json(student);
//        System.out.println("studentת����json�ַ���Ϊ��"+s5);//studentת����json�ַ���Ϊ��{"age":"22","love":["one","two"],"name":"hly","school":{"����Сѧ":"����","�����ѧ":"���"}}
//    }
}
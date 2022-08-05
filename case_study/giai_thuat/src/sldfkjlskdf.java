import java.util.ArrayList;
import java.util.List;

public class sldfkjlskdf {
    public static void main(String[] args) {
        int[] parent = {1,2,3,4,5,6,1};
        int[] child = {1,2};

        int count=0;
        List<Integer> list = new ArrayList<>();
        for (int i = 0; i < child.length; i++) {
            for ( int j = 0; j < parent.length; j++) {
                if (child[i] == parent[j]){
                    count++;
                }
            }
            if (count==0){
                return 0;
            }
            list.add(count);
            count=0;
        }
        int min =list.get(0);
        for (int k :list ) {
            if (k<min){
                min=k;
            }
        }
        return min;
    }
    int i,j,c=0,m;
    List<Integer> l = new ArrayList<>();
        for ( i = 0; i < b.length; i++) {
        for ( j = 0; j < a.length; j++) {
            if (b[i] == a[j])
                c++;
        }
        if (c==0) return 0;
        l.add(c);
        c=0;
    }
    m =l.get(0);
        for (int k :l ) {
        if (k<m) m=k;
    }
        return m;
}

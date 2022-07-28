import java.util.*;

public class mang_2d {
    public static void main(String[] args) {
        int[][] a;
        boolean flag = true;
        Set<Integer> arrSNT = new TreeSet<>();
        int count = 0;
        for (int i = 0; i < a.length; i++) {
            for (int j = 0; j < a[i].length; j++) {
                if (a[i][j] < 2) {
                    continue;
                } else {
                    for (int k = 2; k < a[i][j]; k++) {
                        if (a[i][j] % k == 0) {
                            count++;
                            break;
                        }
                    }
                    if (count == 0) {
                        for (int k = 0; k < arrSNT.size(); k++) {
                            if (arrSNT.get(k) == a[i][j]) {
                                flag = false;
                                break;
                            }
                        }
                        if (flag) {
                            arrSNT.add(a[i][j]);

                        } else {
                            flag = true;
                        }
                    } else {
                        count = 0;
                    }
                }
            }
        }
        Collections.sort(arrSNT);
        int[] b = new int[arrSNT.size()];
        for (int i = 0; i < b.length; i++) {
            b[i] = arrSNT.peek(i);
            arrSNT.pe
        }
        return b;
    }
}

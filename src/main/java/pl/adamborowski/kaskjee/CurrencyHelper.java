package pl.adamborowski.kaskjee;

import java.util.ResourceBundle;

/**
 * Created by adam on 08.10.14.
 */
public class CurrencyHelper {
    public static float change(float value, String from, String to) {
        ResourceBundle r = ResourceBundle.getBundle("kaskjee");
        float fromVal = Float.parseFloat(r.getString("currency." + from.toLowerCase()));
        float toVal = Float.parseFloat(r.getString("currency." + to.toLowerCase()));
        return Math.round(value * fromVal / toVal * 100f) / 100f;
    }
}

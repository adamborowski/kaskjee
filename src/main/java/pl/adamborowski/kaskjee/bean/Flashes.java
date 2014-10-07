package pl.adamborowski.kaskjee.bean;

import lombok.*;

import java.util.ArrayList;

/**
 * Created by adam on 07.10.14.
 */
@ToString
@NoArgsConstructor
@EqualsAndHashCode
public class Flashes {
    public static final String BEAN_NAME = "flashes";
    private ArrayList<String> messages = new ArrayList<>();

    public void addFlash(String str) {
        messages.add(str);
    }

    /**
     * return messages and flush automatically
     *
     * @return
     */
    public ArrayList<String> getMessages() {
        ArrayList<String> messages1 = messages;
        messages = new ArrayList<>();
        return messages1;
    }


}

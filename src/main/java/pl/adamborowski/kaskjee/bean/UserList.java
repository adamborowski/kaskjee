package pl.adamborowski.kaskjee.bean;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;

/**
 * Created by adam on 07.10.14.
 */
@Getter
@NoArgsConstructor
@EqualsAndHashCode
@ToString
public class UserList {
    public static final String BEAN_NAME = "users";
    public ArrayList<AuthUser> users = new ArrayList<>();

    public void addUser(AuthUser user) {
        users.add(user);
    }

    public void removeUser(AuthUser user) {
        users.remove(user);
    }

    public ArrayList<AuthUser> asSort(String sort) {
        @SuppressWarnings("unchecked") ArrayList<AuthUser> newUsers = (ArrayList<AuthUser>) users.clone();
        if (sort.equals("ASC")) {
            Collections.sort(newUsers, new Comparator<AuthUser>() {
                @Override
                public int compare(AuthUser o1, AuthUser o2) {
                    return o1.username.compareTo(o2.username);
                }
            });
        } else if (sort.equals("DESC")) {
            Collections.sort(newUsers, new Comparator<AuthUser>() {
                @Override
                public int compare(AuthUser o1, AuthUser o2) {
                    return o2.username.compareTo(o1.username);
                }
            });
        }
        return newUsers;
    }
}

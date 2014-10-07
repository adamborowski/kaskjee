/**
 * Created by adam on 07.10.14.
 */

package pl.adamborowski.kaskjee.bean;

import java.io.Serializable;
import java.util.Date;

import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class AuthUser implements Serializable {
    public static final String BEAN_NAME = "user";
    String test = "test 123";
    boolean logged = false;
    String username = "";
    Date lastLogin;
}

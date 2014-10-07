package pl.adamborowski.kaskjee;

import pl.adamborowski.kaskjee.bean.AuthUser;
import pl.adamborowski.kaskjee.bean.Flashes;
import pl.adamborowski.kaskjee.bean.UserList;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class MyListener implements ServletContextListener, HttpSessionListener {

    @Override
    public void contextInitialized(ServletContextEvent event) {
        System.out.println("@adam server created");
        event.getServletContext().setAttribute(UserList.BEAN_NAME, new UserList());
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("@adam server destroyed");
    }

    @Override
    public void sessionCreated(HttpSessionEvent e) {
        System.out.println("@adam session created");
        Flashes flashes = new Flashes();
        flashes.addFlash("message.session_created");
        e.getSession().setAttribute(Flashes.BEAN_NAME, flashes);
        e.getSession().setAttribute(AuthUser.BEAN_NAME, new AuthUser());

    }

    @Override
    public void sessionDestroyed(HttpSessionEvent e) {
        System.out.println("@adam session destroyed");
        UserList users = (UserList) e.getSession().getServletContext().getAttribute(UserList.BEAN_NAME);

        AuthUser user = (AuthUser) e.getSession().getAttribute(AuthUser.BEAN_NAME);
        if (user != null) {
            users.removeUser(user);
        }

    }
}
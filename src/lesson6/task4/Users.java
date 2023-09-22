package lesson6.task4;

import java.util.Date;

public class Users {

    private long id;
    private String nick;
    private String password;
    private String email;
    private Date date;
    private double karma;
    private String ip;

    public Users(long id, String nick, String password, String email, Date date, double karma, String ip) {
        this.id = id;
        this.nick = nick;
        this.password = password;
        this.email = email;
        this.date = date;
        this.karma = karma;
        this.ip = ip;
    }
}

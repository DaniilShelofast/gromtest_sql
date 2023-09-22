package lesson6.task4;

import java.util.Date;

public class ForumPollsOptionsVotes {

    private long id;
    private ForumPollsOptions forumPollsOptions;
    private Users users;
    private Date date;
    private String ip;

    public ForumPollsOptionsVotes(long id, ForumPollsOptions forumPollsOptions, Users users, Date date, String ip) {
        this.id = id;
        this.forumPollsOptions = forumPollsOptions;
        this.users = users;
        this.date = date;
        this.ip = ip;
    }
}
